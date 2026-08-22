---
title: "Dynamics and Neural Systems Group - Join Us"
layout: textlay
excerpt: "Join Us"
sitemap: false
permalink: /join/
---

# Open positions

We are always looking for new group members!

<div class="feature-stack" markdown="0">

<div class="feature-panel card-hover">
<h4>Our group culture</h4>
<span class="position-relative d-inline-block" style="float: right; margin: 0 0 1rem 1.5rem;">
<canvas id="langford-canvas" width="240" height="240" style="width: 240px; height: 240px; display: block; border-radius: 10px; box-shadow: var(--card-shadow); background: #0f2942;" role="img" aria-label="Animated trajectories of two Langford (Aizawa) chaotic attractors from randomized initial conditions">Animated illustration of two Langford (Aizawa) chaotic attractor trajectories from randomized initial conditions.</canvas>
<button type="button" class="pub-info-btn btn btn-link btn-sm position-absolute top-0 end-0 m-1 p-0" style="color: rgba(255,255,255,.9);" tabindex="0" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="left" data-bs-custom-class="pub-popover" data-bs-html="true" title="Langford (Aizawa) attractor" data-bs-content="A pair of Langford attractors (also known as the <a href='https://www.algosome.com/articles/aizawa-attractor-chaos.html'>Aizawa attractor</a>) started from different random initial conditions, showing how chaotic systems diverge from nearly any starting point." aria-label="About this simulation"><i class="fas fa-circle-info"></i></button>
</span>
<p><em>The Dynamics and Neural Systems Group is dedicated to promoting a research environment in which people with all types of personalities and backgrounds feel included and supported.</em></p>
<p class="mb-0">If you're thinking about joining the group but are unsure of what the environment and culture is like, feel free to contact <a href="{{ site.url }}{{ site.baseurl }}/team">some of the current or past members</a> to get a candid assessment!</p>
</div>

<div class="feature-panel card-hover">
<h4>Graduate research projects</h4>
<span class="position-relative d-inline-block" style="float: right; margin: 0 0 1rem 1.5rem;">
<canvas id="cml-canvas" width="240" height="240" style="width: 240px; height: 240px; display: block; border-radius: 10px; box-shadow: var(--card-shadow); background: #0f2942;" role="img" aria-label="Scrolling spacetime diagram of a 1D coupled map lattice showing spatiotemporal chaos">Scrolling spacetime diagram of a 1D coupled map lattice showing spatiotemporal chaos.</canvas>
<button type="button" class="pub-info-btn btn btn-link btn-sm position-absolute top-0 end-0 m-1 p-0" style="color: rgba(255,255,255,.9);" tabindex="0" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="left" data-bs-custom-class="pub-popover" data-bs-html="true" title="Coupled map lattice" data-bs-content="A <a href='http://www.scholarpedia.org/article/Coupled_maps'>coupled map lattice</a> &mdash; a ring of identical chaotic maps, each diffusively coupled to its two neighbours. Each new column is the ring's state at one instant, so the strip scrolling left-to-right traces out its spatiotemporal chaos over time." aria-label="About this simulation"><i class="fas fa-circle-info"></i></button>
</span>
<p>A sample of graduate research projects currently on offer are listed on the University of Sydney's <a href="https://www.sydney.edu.au/research/research-supervisor-connect.html">Research Supervisor Connect</a>: a list of current projects are listed in <a href="https://www.sydney.edu.au/s/search.html?f.Content+type%7Cx=research+opportunities&collection=Usyd&query=fulcher">my profile</a>.
This is not a complete or restrictive list, but is mainly to act as a guide of the types of projects that you could work on if you joined our group.</p>
<p><strong>First, please read</strong>: We have written some general advice about doing a PhD, including specific details about how to do a PhD at The University of Sydney are <a href="https://time-series-features.gitbook.io/research-resources/advice/doing-a-phd">here</a>.</p>
<p class="mb-0">If you are interested in joining the group as a graduate research student, please send me an <a href="mailto:ben.fulcher@sydney.edu.au">email</a>.
Please attach a CV and include relevant undergraduate transcripts.
Top-up funding is available for strong PhD students.</p>
</div>

<div class="feature-panel card-hover">
<h4>Undergraduate or visiting research students</h4>
<span class="position-relative d-inline-block" style="float: right; margin: 0 0 1rem 1.5rem;">
<canvas id="catmap-canvas" width="240" height="240" style="width: 240px; height: 240px; display: block; border-radius: 10px; box-shadow: var(--card-shadow); background: #0f2942;" role="img" aria-label="Animated Arnold's cat map, repeatedly scrambling and reassembling a simple cat-face image">Animated illustration of Arnold's cat map scrambling and reassembling a cat-face image.</canvas>
<button type="button" class="pub-info-btn btn btn-link btn-sm position-absolute top-0 end-0 m-1 p-0" style="color: rgba(255,255,255,.9);" tabindex="0" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="left" data-bs-custom-class="pub-popover" data-bs-html="true" title="Arnold's cat map" data-bs-content="<a href='https://en.wikipedia.org/wiki/Arnold%27s_cat_map'>Arnold's cat map</a> &mdash; a simple area-preserving transformation that scrambles an image into apparent noise, then, given enough patience, reassembles it perfectly." aria-label="About this simulation"><i class="fas fa-circle-info"></i></button>
</span>
<p>Talented undergraduates at Sydney University can apply for a summer research scholarship <a href="http://sydney.edu.au/scholarships/undergraduate/faculty/science.shtml#DPSS">here</a>.</p>
<p class="mb-0">We also keep some basic resources about visiting or moving to Sydney <a href="https://time-series-features.gitbook.io/research-resources/advice/sydney">here</a>.</p>
</div>

</div>

<script>
(function () {
  // Shared engine for the small chaotic-attractor canvases on this page.
  // Each caller supplies its own `step` (advance the ODE state by one dt)
  // and `project` (map current state -> {px, py} in canvas pixels); this
  // handles canvas setup, the fading trail, the color cycle, and the
  // prefers-reduced-motion fallback so both attractors share one
  // implementation instead of two near-duplicate blocks.
  //
  // Trail color drifts continuously through a blue -> mustard -> crimson
  // -> blue loop (rather than a fixed accent set) via colorPhase, which
  // increases by colorSpeed once per drawn segment.
  var palette = [
    { r: 59, g: 130, b: 246 },  // blue
    { r: 209, g: 161, b: 44 },  // mustard
    { r: 220, g: 47, b: 78 }    // crimson
  ];

  function paletteColor(t) {
    var n = palette.length;
    var scaled = (((t % 1) + 1) % 1) * n;
    var i = Math.floor(scaled);
    var frac = scaled - i;
    var c0 = palette[i % n], c1 = palette[(i + 1) % n];
    var r = Math.round(c0.r + (c1.r - c0.r) * frac);
    var g = Math.round(c0.g + (c1.g - c0.g) * frac);
    var b = Math.round(c0.b + (c1.b - c0.b) * frac);
    return 'rgb(' + r + ',' + g + ',' + b + ')';
  }

  // Non-cyclic counterpart of paletteColor(), for mapping a static value in
  // [0,1] (rather than a drifting time phase) onto the same blue/mustard/
  // crimson palette - used to colour the coupled-map-lattice field by cell
  // value, where wrapping back to blue at the top of the range would make
  // the highest values look like the lowest.
  function sequentialColor(t) {
    var n = palette.length - 1;
    var scaled = Math.max(0, Math.min(1, t)) * n;
    var i = Math.min(Math.floor(scaled), n - 1);
    var frac = scaled - i;
    var c0 = palette[i], c1 = palette[i + 1];
    var r = Math.round(c0.r + (c1.r - c0.r) * frac);
    var g = Math.round(c0.g + (c1.g - c0.g) * frac);
    var b = Math.round(c0.b + (c1.b - c0.b) * frac);
    return [r, g, b];
  }

  // `opts.step()` advances every particle's state by one dt; `opts.project`
  // returns an array of {px, py} (one per particle), so systems can run
  // several independent trajectories on one shared, fading canvas. Single-
  // trajectory systems just return a one-element array.
  function initAttractor(opts) {
    var canvas = document.getElementById(opts.canvasId);
    if (!canvas || !canvas.getContext) return;
    var ctx = canvas.getContext('2d');

    // Crisp lines on high-DPI screens: back the canvas with more pixels
    // than its CSS size and scale the drawing context to match.
    var size = opts.size || 240;
    var dpr = window.devicePixelRatio || 1;
    canvas.width = size * dpr;
    canvas.height = size * dpr;
    ctx.scale(dpr, dpr);

    // Settle onto the attractor before the first frame is drawn, so the
    // initial transient isn't visible.
    for (var burn = 0; burn < opts.burnIn; burn++) opts.step();

    ctx.fillStyle = opts.background;
    ctx.fillRect(0, 0, size, size);

    var prevPoints = opts.project(size);
    var colorPhase = 0;
    var colorOffsets = opts.colorOffsets || [0];
    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    function drawSegment() {
      opts.step();
      var points = opts.project(size);
      for (var p = 0; p < points.length; p++) {
        ctx.strokeStyle = paletteColor(colorPhase + colorOffsets[p]);
        ctx.beginPath();
        ctx.moveTo(prevPoints[p].px, prevPoints[p].py);
        ctx.lineTo(points[p].px, points[p].py);
        ctx.stroke();
      }
      prevPoints = points;
      colorPhase += opts.colorSpeed;
    }

    function frame() {
      // Fade the trail instead of clearing outright, so recent path
      // segments stay bright while older ones drift into the background.
      ctx.fillStyle = opts.fadeColor;
      ctx.fillRect(0, 0, size, size);
      ctx.lineWidth = 1.1;
      for (var k = 0; k < opts.substeps; k++) drawSegment();
      if (!reduceMotion) requestAnimationFrame(frame);
    }

    if (reduceMotion) {
      // Draw one settled, still-colorful frame and stop.
      ctx.lineWidth = 1.1;
      for (var n = 0; n < 1500; n++) drawSegment();
    } else {
      requestAnimationFrame(frame);
    }
  }

  // Two independent Langford (Aizawa) attractors - see Paul Bourke's
  // chaotic-attractors page for the base system. Each particle starts from
  // its own random point (checked empirically to avoid a competing stable
  // fixed point around (0, 0, -1.1) that some wider random starts fall
  // into instead of the chaotic attractor - a +/-0.6 box around the origin
  // reliably lands in the chaotic basin). Bounded chaotic orbit: x,y stay
  // within roughly [-1.6, 1.6], z within roughly [-0.65, 1.95] once
  // settled, which sets the projection scale/offset below. Both particles
  // share one slowly rotating camera angle so they read as two dots
  // orbiting in the same view rather than two separately spinning shapes.
  (function () {
    var a = 0.95, b = 0.7, c = 0.6, d = 3.5, e = 0.25, f = 0.1;
    var dt = 0.01;
    var angle = 0;
    var scale = 68;

    function randomStart() {
      return {
        x: (Math.random() * 2 - 1) * 0.6,
        y: (Math.random() * 2 - 1) * 0.6,
        z: (Math.random() * 2 - 1) * 0.6
      };
    }

    var particles = [randomStart(), randomStart()];

    function step() {
      for (var i = 0; i < particles.length; i++) {
        var p = particles[i];
        var dx = (p.z - b) * p.x - d * p.y;
        var dy = d * p.x + (p.z - b) * p.y;
        var dz = c + a * p.z - (p.z * p.z * p.z) / 3 - (p.x * p.x + p.y * p.y) * (1 + e * p.z) + f * p.z * p.x * p.x * p.x;
        p.x += dx * dt;
        p.y += dy * dt;
        p.z += dz * dt;
      }
    }

    function project(size) {
      angle += 0.00025;
      var cosA = Math.cos(angle), sinA = Math.sin(angle);
      return particles.map(function (p) {
        var rx = p.x * cosA - p.y * sinA;
        return {
          px: size / 2 + rx * scale,
          py: size / 2 + (p.z - 0.6) * scale * 0.85
        };
      });
    }

    initAttractor({
      canvasId: 'langford-canvas',
      background: '#0f2942',
      fadeColor: 'rgba(15, 41, 66, 0.03)',
      burnIn: 3000,
      substeps: 10,
      colorSpeed: 0.00015,
      colorOffsets: [0, 0.5],
      step: step,
      project: project
    });
  })();

  // 1D coupled map lattice (Kaneko, 1989) drawn as a scrolling spacetime
  // diagram - the classic way to show off spatiotemporal chaos, and much
  // more legible than the 2D field this replaced. L identical logistic
  // maps f(x) = a*x*(1-x) at a = 4 (fully chaotic) sit on a ring, each
  // diffusively coupled to its 2 neighbours. Each new value is a weighted
  // average of f() at itself and its neighbours with weights (1 - eps)
  // and eps/2 x 2, which sum to 1 - so every value is a convex
  // combination of values already in [0, 1] and the lattice can never
  // leave that range regardless of how chaotic the local dynamics get.
  // eps = 0.3 was checked empirically (mean site variance stays well
  // above zero, and the lattice never locks into the period-2-in-time/
  // checkerboard-in-space pattern some coupling strengths fall into) to
  // keep it in sustained spatiotemporal chaos rather than freezing or
  // synchronising.
  //
  // Each animation tick draws the current ring state as one new column -
  // one pixel-block per site, running down the canvas - scrolls the
  // existing image left by that column's width, and appends the new
  // column at the right edge, so time reads left-to-right like a strip
  // chart. The canvas is pre-filled with a full-width column-by-column
  // history on load rather than starting blank.
  (function () {
    var canvas = document.getElementById('cml-canvas');
    if (!canvas || !canvas.getContext) return;
    var ctx = canvas.getContext('2d');

    var size = 240;
    var dpr = window.devicePixelRatio || 1;
    canvas.width = size * dpr;
    canvas.height = size * dpr;
    ctx.imageSmoothingEnabled = false;

    var L = 30;
    var a = 4;
    var eps = 0.3;
    var colW = 2 * dpr;

    function f(v) {
      return a * v * (1 - v);
    }

    var lattice = new Float32Array(L);
    for (var idx = 0; idx < L; idx++) lattice[idx] = Math.random();

    var fBuf = new Float32Array(L);
    var newLattice = new Float32Array(L);

    function stepLattice() {
      for (var i = 0; i < L; i++) fBuf[i] = f(lattice[i]);
      for (var i2 = 0; i2 < L; i2++) {
        var ip = (i2 + 1) % L, im = (i2 - 1 + L) % L;
        newLattice[i2] = (1 - eps) * fBuf[i2] + (eps / 2) * (fBuf[ip] + fBuf[im]);
      }
      var tmp = lattice;
      lattice = newLattice;
      newLattice = tmp;
    }

    // Settle from raw noise into the lattice's own texture before the
    // first column is drawn.
    for (var burn = 0; burn < 20; burn++) stepLattice();

    var colCanvas = document.createElement('canvas');
    colCanvas.width = 1;
    colCanvas.height = L;
    var colCtx = colCanvas.getContext('2d');
    var colImgData = colCtx.createImageData(1, L);

    function drawColumnAt(xPx) {
      var data = colImgData.data;
      for (var i = 0; i < L; i++) {
        var col = sequentialColor(lattice[i]);
        var o = i * 4;
        data[o] = col[0];
        data[o + 1] = col[1];
        data[o + 2] = col[2];
        data[o + 3] = 255;
      }
      colCtx.putImageData(colImgData, 0, 0);
      ctx.drawImage(colCanvas, 0, 0, 1, L, xPx, 0, colW, canvas.height);
    }

    // Fill the whole width with history before the page is even painted,
    // rather than starting from a blank/half-empty strip.
    ctx.fillStyle = '#0f2942';
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    var numCols = Math.ceil(canvas.width / colW);
    for (var c = 0; c < numCols; c++) {
      stepLattice();
      drawColumnAt(c * colW);
    }

    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduceMotion) return;

    function scrollAndAppend() {
      stepLattice();
      ctx.drawImage(canvas, colW, 0, canvas.width - colW, canvas.height, 0, 0, canvas.width - colW, canvas.height);
      drawColumnAt(canvas.width - colW);
    }

    var frameCount = 0;
    var everyNFrames = 5;
    function frame() {
      frameCount++;
      if (frameCount % everyNFrames === 0) scrollAndAppend();
      requestAnimationFrame(frame);
    }
    requestAnimationFrame(frame);
  })();

  // Arnold's cat map - a discrete, area-preserving map on an N x N grid of
  // pixels: (i, j) -> ((2i + j) mod N, (i + j) mod N). Its matrix [[2,1],
  // [1,1]] has determinant 1, so reduced mod N it's always invertible -
  // meaning the map is an exact permutation of the grid's cells (no gaps,
  // no resampling/blur needed) and, being a permutation of a finite set,
  // must eventually cycle back to the identity. For N = 100 that period is
  // exactly 150 iterations, so the cat face below scrambles into
  // apparent noise and then snaps back into a perfect copy of itself
  // every 150 steps.
  (function () {
    var canvas = document.getElementById('catmap-canvas');
    if (!canvas || !canvas.getContext) return;
    var ctx = canvas.getContext('2d');

    var size = 240;
    var dpr = window.devicePixelRatio || 1;
    canvas.width = size * dpr;
    canvas.height = size * dpr;
    ctx.imageSmoothingEnabled = false;

    var N = 100;
    var colors = [
      [15, 41, 66],    // 0: background (navy, matches card)
      [209, 161, 44],  // 1: face (mustard)
      [59, 130, 246],  // 2: ears (blue)
      [220, 47, 78]    // 3: eyes & nose (crimson)
    ];

    function pointInTriangle(px, py, ax, ay, bx, by, cx, cy) {
      var d1 = (px - bx) * (ay - by) - (ax - bx) * (py - by);
      var d2 = (px - cx) * (by - cy) - (bx - cx) * (py - cy);
      var d3 = (px - ax) * (cy - ay) - (cx - ax) * (py - ay);
      var hasNeg = (d1 < 0) || (d2 < 0) || (d3 < 0);
      var hasPos = (d1 > 0) || (d2 > 0) || (d3 > 0);
      return !(hasNeg && hasPos);
    }

    // Draws a small flat-shaded cat face - simple enough to still read as
    // a face once it starts smearing under repeated mapping.
    function buildInitialGrid() {
      var grid = new Uint8Array(N * N);
      for (var i = 0; i < N; i++) {
        for (var j = 0; j < N; j++) {
          var u = (i + 0.5) / N, v = (j + 0.5) / N;
          var c = 0;
          if (
            pointInTriangle(u, v, 0.20, 0.34, 0.34, 0.34, 0.25, 0.10) ||
            pointInTriangle(u, v, 0.80, 0.34, 0.66, 0.34, 0.75, 0.10)
          ) {
            c = 2;
          } else {
            var dFace = Math.hypot(u - 0.5, v - 0.58);
            if (dFace <= 0.30) {
              c = 1;
              var dLEye = Math.hypot(u - 0.40, v - 0.52);
              var dREye = Math.hypot(u - 0.60, v - 0.52);
              var dNose = Math.hypot(u - 0.50, v - 0.66);
              if (dLEye <= 0.045 || dREye <= 0.045 || dNose <= 0.035) c = 3;
            }
          }
          grid[i * N + j] = c;
        }
      }
      return grid;
    }

    var grid = buildInitialGrid();

    var work = document.createElement('canvas');
    work.width = N;
    work.height = N;
    var wctx = work.getContext('2d');
    var imgData = wctx.createImageData(N, N);

    function render() {
      var data = imgData.data;
      for (var i = 0; i < N; i++) {
        for (var j = 0; j < N; j++) {
          var col = colors[grid[i * N + j]];
          // ImageData is row-major in (row=y, col=x); our grid is indexed
          // [i][j] = [x][y], so transpose on write.
          var o = (j * N + i) * 4;
          data[o] = col[0];
          data[o + 1] = col[1];
          data[o + 2] = col[2];
          data[o + 3] = 255;
        }
      }
      wctx.putImageData(imgData, 0, 0);
      ctx.drawImage(work, 0, 0, N, N, 0, 0, canvas.width, canvas.height);
    }

    function stepMap() {
      var newGrid = new Uint8Array(N * N);
      for (var i = 0; i < N; i++) {
        for (var j = 0; j < N; j++) {
          var c = grid[i * N + j];
          if (c === 0) continue;
          var ni = (2 * i + j) % N;
          var nj = (i + j) % N;
          newGrid[ni * N + nj] = c;
        }
      }
      grid = newGrid;
    }

    render();

    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduceMotion) return;

    var frameCount = 0;
    var everyNFrames = 6;
    function frame() {
      frameCount++;
      if (frameCount % everyNFrames === 0) {
        stepMap();
        render();
      }
      requestAnimationFrame(frame);
    }
    requestAnimationFrame(frame);
  })();
})();
</script>

<script>
document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('[data-bs-toggle="popover"]').forEach(function (el) {
    new bootstrap.Popover(el);
  });
  document.addEventListener('click', function (event) {
    document.querySelectorAll('[data-bs-toggle="popover"]').forEach(function (el) {
      if (!el.contains(event.target)) {
        bootstrap.Popover.getInstance(el)?.hide();
      }
    });
  });
});
</script>
