// Cut a head-shaped cutout (transparent background) out of each team photo,
// for the stick-figure runners on the team page (_includes/team_runners.html).
//
// Uses macOS's on-device Vision framework: face detection to find and scale the
// face, foreground-instance segmentation to keep only that person (dropping the
// background and anyone behind them), and a soft oval to trim
// the neck and shoulders. Every output is the same size, with the chin at the
// same point, so the runners' heads line up.
//
// Usage (from the repo root):
//   swift _scripts/make_heads.swift images/teampic/heads images/teampic/BenFulcher.png ...
// Per-photo tweaks: append :dy=<faces>,zoom=<factor>, e.g. Foo.jpg:dy=0.05,zoom=1.1

import CoreImage
import Foundation
import ImageIO
import Vision

let canvas = CGSize(width: 200, height: 240)
let faceHeight: CGFloat = 104          // detected face box height on the canvas (px)
let chin = CGPoint(x: 100, y: 24)      // where the bottom of the face box lands (origin bottom-left)
let ctx = CIContext()

let args = CommandLine.arguments
guard args.count > 2 else {
    print("usage: make_heads <outdir> <photo>[:dy=..,zoom=..] ...")
    exit(1)
}
let outDir = URL(fileURLWithPath: args[1])
try FileManager.default.createDirectory(at: outDir, withIntermediateDirectories: true)

for arg in args.dropFirst(2) {
    let parts = arg.split(separator: ":", maxSplits: 1).map(String.init)
    var dy: CGFloat = 0, zoom: CGFloat = 1
    if parts.count > 1 {
        for kv in parts[1].split(separator: ",") {
            let p = kv.split(separator: "=")
            if p.count == 2, let v = Double(p[1]) {
                if p[0] == "dy" { dy = CGFloat(v) } else if p[0] == "zoom" { zoom = CGFloat(v) }
            }
        }
    }
    let url = URL(fileURLWithPath: parts[0])
    guard let src = CGImageSourceCreateWithURL(url as CFURL, nil),
          let cg = CGImageSourceCreateImageAtIndex(src, 0, nil) else {
        print("SKIP (unreadable) \(url.lastPathComponent)"); continue
    }
    let props = CGImageSourceCopyPropertiesAtIndex(src, 0, nil) as? [CFString: Any]
    let orientation = CGImagePropertyOrientation(rawValue: (props?[kCGImagePropertyOrientation] as? UInt32) ?? 1) ?? .up
    var img = CIImage(cgImage: cg).oriented(orientation)
    img = img.transformed(by: CGAffineTransform(translationX: -img.extent.minX, y: -img.extent.minY))
    let w = img.extent.width, h = img.extent.height

    let faceReq = VNDetectFaceRectanglesRequest()
    let segReq = VNGenerateForegroundInstanceMaskRequest()
    let handler = VNImageRequestHandler(ciImage: img, options: [:])
    try handler.perform([faceReq, segReq])

    guard let face = faceReq.results?.max(by: { $0.boundingBox.height < $1.boundingBox.height }) else {
        print("NO FACE \(url.lastPathComponent)"); continue
    }
    let box = face.boundingBox
    let fh = box.height * h
    let anchor = CGPoint(x: box.midX * w, y: box.minY * h + dy * fh)

    // Keep only the foreground instance under the face (drops background and bystanders).
    var cut = img
    if let seg = segReq.results?.first {
        let labels = seg.instanceMask
        CVPixelBufferLockBaseAddress(labels, .readOnly)
        let lw = CVPixelBufferGetWidth(labels), lh = CVPixelBufferGetHeight(labels)
        let row = CVPixelBufferGetBytesPerRow(labels)
        let base = CVPixelBufferGetBaseAddress(labels)!.assumingMemoryBound(to: UInt8.self)
        let px = min(lw - 1, Int(box.midX * CGFloat(lw)))
        let py = min(lh - 1, Int((1 - box.midY) * CGFloat(lh)))   // buffer rows run top-down
        let label = Int(base[py * row + px])
        CVPixelBufferUnlockBaseAddress(labels, .readOnly)
        let chosen = label > 0 ? IndexSet(integer: label) : seg.allInstances
        if let buf = try? seg.generateScaledMaskForImage(forInstances: chosen, from: handler) {
            let mask = CIImage(cvPixelBuffer: buf)
            cut = img.applyingFilter("CIBlendWithMask", parameters: [
                kCIInputBackgroundImageKey: CIImage.empty(), kCIInputMaskImageKey: mask])
        }
    }

    // Scale the face to a standard size, level any head tilt, and put the chin in place.
    let s = faceHeight * zoom / fh
    let roll = CGFloat(face.roll?.doubleValue ?? 0)
    let t = CGAffineTransform(translationX: -anchor.x, y: -anchor.y)
        .concatenating(CGAffineTransform(translationX: 0, y: -faceHeight / 2 / s))
        .concatenating(CGAffineTransform(rotationAngle: -roll))
        .concatenating(CGAffineTransform(translationX: 0, y: faceHeight / 2 / s))
        .concatenating(CGAffineTransform(scaleX: s, y: s))
        .concatenating(CGAffineTransform(translationX: chin.x, y: chin.y))
    var placed = cut.transformed(by: t)

    // Soft oval that keeps head and hair but trims the neck and shoulders.
    let oval = CIFilter(name: "CIRadialGradient", parameters: [
        "inputCenter": CIVector(x: 0, y: 0), "inputRadius0": 94, "inputRadius1": 100,
        "inputColor0": CIColor.white, "inputColor1": CIColor.black])!.outputImage!
        .transformed(by: CGAffineTransform(scaleX: 0.84, y: 1.12)
            .concatenating(CGAffineTransform(translationX: chin.x, y: chin.y - 10 + 112)))
    placed = placed.applyingFilter("CIBlendWithMask", parameters: [
        kCIInputBackgroundImageKey: CIImage.empty(), kCIInputMaskImageKey: oval])

    let out = outDir.appendingPathComponent(url.deletingPathExtension().lastPathComponent + ".png")
    try ctx.writePNGRepresentation(of: placed.cropped(to: CGRect(origin: .zero, size: canvas)),
                                   to: out, format: .RGBA8,
                                   colorSpace: CGColorSpace(name: CGColorSpace.sRGB)!)
    print(String(format: "ok %@  (roll %.0f°)", url.lastPathComponent, roll * 180 / .pi))
}
