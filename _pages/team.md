---
title: "Dynamics and Neural Systems Group - Team"
layout: gridlay
excerpt: "Dynamics and Neural Systems Group: Team members"
sitemap: false
permalink: /team/
---

# Current Team

We are always looking for new Honours, Masters, and PhD students to [join the team]({{ site.url }}{{ site.baseurl }}/join)!

<!-- Jump to [postdocs](#postdocs), [master and bachelor students](#master-and-bachelor-students), [alumni](#alumni), [administrative support](#administrative-support), [lab visitors](#lab-visitors). -->

{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i><br>
  <a href = "mailto:{{ member.email }}">Email <i class="fa fa-envelope"></i></a>.
  {% if member.twitter %}<a href = "https://twitter.com/{{ member.twitter }}">Twitter <i class="fa-brands fa-x-twitter"></i></a>.{% endif %}
  {% if member.website %}<a href = "{{ member.website }}">Website <i class="fa-solid fa-globe"></i></a>.{% endif %}
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  {% endif %}

  </ul>
</div>

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

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i><br>
  {% if member.project_title %}<i>Project: </i>{{ member.project_title }}.<br>{% endif %}
  <a href = "mailto:{{ member.email }}">Email <i class="fa fa-envelope"></i></a>.
  {% if member.twitter %}<a href = "https://twitter.com/{{ member.twitter }}">Twitter <i class="fa-brands fa-x-twitter"></i></a>.{% endif %} {% if member.github %}<a href = "https://github.com/{{ member.github }}">GitHub <i class="fa-brands fa-github"></i></a>.{% endif %}  {% if member.website %}<a href = "{{ member.website }}">Website <i class="fa-solid fa-globe"></i></a>.{% endif %}
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  </ul>
</div>

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

<!-- Postdocs -->

<div class="row">
<div class="col-sm-6 clearfix">
<h4>Postdoctoral researchers</h4>
{% for member in site.data.alumni_members %}
{{ member.name }}
{% endfor %}
</div>
</div>

<!-- Students -->
<div class="row">
<div class="col-sm-6 clearfix">
<h4>Students</h4>
{% for member in site.data.alumni_msc %}
{{ member.name }}
{% endfor %}
</div>
</div>

<!-- Visitors -->
<div class="row">
<div class="col-sm-6 clearfix">
<h4>Visitors</h4>
{% for member in site.data.alumni_visitors %}
{{ member.name }}
{% endfor %}
</div>
</div>

<!-- <div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>
{% for member in site.data.alumni_bsc %}
{{ member.name }}
{% endfor %}
</div> -->
