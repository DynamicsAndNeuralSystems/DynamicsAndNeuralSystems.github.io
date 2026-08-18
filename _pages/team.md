---
title: "Dynamics and Neural Systems Group - Team"
layout: gridlay
excerpt: "Dynamics and Neural Systems Group: Team members"
sitemap: false
permalink: /team/
---

# Current Team

We are always looking for new Honours, Masters, and PhD students to [join the team]({{ site.url }}{{ site.baseurl }}/join/)!


{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

{% include member_card.html member=member %}

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

### Current Students (PhD, Masters, and Honours)

{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

{% include member_card.html member=member %}

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

# Alumni

<div class="row">
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
