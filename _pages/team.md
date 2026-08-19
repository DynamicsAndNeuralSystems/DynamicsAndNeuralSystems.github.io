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

<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 g-4 mb-5" markdown="0">
{% for member in site.data.team_members %}
{% include member_card.html member=member %}
{% endfor %}
</div>

### Current Students (PhD, Masters, and Honours)

<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 g-4 mb-5" markdown="0">
{% for member in site.data.students %}
{% include member_card.html member=member %}
{% endfor %}
</div>

# Alumni

<div class="row g-4" markdown="0">
<div class="col-sm-4">
<h4>Postdoctoral researchers</h4>
<ul>
{% for member in site.data.alumni_members %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>

<div class="col-sm-4">
<h4>Students</h4>
<ul>
{% for member in site.data.alumni_msc %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>

<div class="col-sm-4">
<h4>Visitors</h4>
<ul>
{% for member in site.data.alumni_visitors %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>
</div>
