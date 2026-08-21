---
title: "Dynamics and Neural Systems Group - Team"
layout: gridlay
excerpt: "Dynamics and Neural Systems Group: Team members"
sitemap: false
permalink: /team/
---

<div class="hero">
# Current Team

We are always looking for new Honours, Masters, and PhD students to [join the team]({{ site.url }}{{ site.baseurl }}/join/)!
</div>

<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-5 g-4 mb-5" markdown="0">
{% for member in site.data.team_members %}
{% include member_card.html member=member %}
{% endfor %}
</div>

<hr class="section-divider">

<div class="panel-section">
### Current Students (PhD, Masters, and Honours)

<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-5 g-4" markdown="0">
{% for member in site.data.students %}
{% include member_card.html member=member %}
{% endfor %}
</div>
</div>

<hr class="section-divider">

<div class="panel-section">
# Alumni

<h4>Postdoctoral researchers</h4>
<div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-7 g-3 mb-4" markdown="0">
{% for member in site.data.alumni_members %}
{% include alumni_card.html member=member %}
{% endfor %}
</div>

<h4>Students</h4>
<div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-7 g-3 mb-4" markdown="0">
{% for member in site.data.alumni_msc %}
{% include alumni_card.html member=member %}
{% endfor %}
</div>

<h4>Visitors</h4>
<ul>
{% for member in site.data.alumni_visitors %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>

<div class="captcha-overlay" id="captcha-overlay" markdown="0">
<div class="captcha-box">
<div class="captcha-header">
<div class="captcha-header-text">Select all images with<br><strong>Bryan Johnson</strong></div>
<div class="captcha-header-icon">🔒</div>
</div>
<div class="captcha-grid">
<div class="captcha-tile"><span class="captcha-emoji">🧬</span></div>
<div class="captcha-tile"><span class="captcha-emoji">💊</span></div>
<div class="captcha-tile"><span class="captcha-emoji">⏰</span></div>
<div class="captcha-tile"><span class="captcha-emoji">🩸</span></div>
<div class="captcha-tile"><span class="captcha-emoji">🥗</span></div>
<div class="captcha-tile"><span class="captcha-emoji">😴</span></div>
<div class="captcha-tile"><span class="captcha-emoji">📊</span></div>
<div class="captcha-tile"><span class="captcha-emoji">🚫</span></div>
<div class="captcha-tile"><span class="captcha-emoji">💀</span></div>
</div>
<div class="captcha-result" id="captcha-result"></div>
<div class="captcha-footer">
<button type="button" class="captcha-skip" id="captcha-skip">SKIP</button>
<button type="button" class="captcha-verify" id="captcha-verify">VERIFY</button>
</div>
</div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
  var trigger = document.getElementById('captcha-trigger');
  var overlay = document.getElementById('captcha-overlay');
  var result = document.getElementById('captcha-result');
  if (!trigger || !overlay) return;

  function closeCaptcha() {
    overlay.classList.remove('show');
    result.textContent = '';
    document.querySelectorAll('.captcha-tile.selected').forEach(function (t) {
      t.classList.remove('selected');
    });
  }

  trigger.addEventListener('click', function () {
    overlay.classList.add('show');
  });

  overlay.addEventListener('click', function (e) {
    if (e.target === overlay) closeCaptcha();
  });

  document.querySelectorAll('.captcha-tile').forEach(function (tile) {
    tile.addEventListener('click', function () {
      tile.classList.toggle('selected');
    });
  });

  document.getElementById('captcha-skip').addEventListener('click', closeCaptcha);

  document.getElementById('captcha-verify').addEventListener('click', function () {
    result.textContent = "Verified — that's 100% of his known interests. You may proceed.";
  });
});
</script>
