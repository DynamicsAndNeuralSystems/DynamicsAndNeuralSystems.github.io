---
title: "Dynamics and Neural Systems Group - Publications"
layout: gridlay
excerpt: "Dynamics and Neural Systems Group -- Publications."
sitemap: false
permalink: /publications/
---

<div class="hero">
# Publications

Here we list some key research publications from the Dynamics and Neural Systems Group.

For BD Fulcher's full publication list, see [Google Scholar](https://scholar.google.com.au/citations?user=iQYJOW4AAAAJ).

We include a link to the journal article, alongside a link to an associated YouTube presentation or explainer video, and any associated news article or plain-language summary.
</div>

## Recent Highlights

{% assign sorted_publist = site.data.publist | sort: 'link.year' | reverse %}

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 mb-5" markdown="0">
{% for publi in sorted_publist %}
{% if publi.highlight == 1 %}
<div class="col">
<div class="card h-100 border-0 card-hover pub-card">
<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="card-img-top">
<div class="card-body d-flex flex-column">
<h5 class="card-title">{{ publi.title }}</h5>
<p class="text-muted small">{{ publi.description }}</p>
<p class="small mb-1">{{ publi.authors | replace: '\*', '*' }}</p>
<p class="small mb-2"><a href="{{ publi.link.url }}"><em>{{ publi.link.journal }}</em> ({{publi.link.year}}).</a></p>
{% if publi.news1 %}<p class="text-danger small fw-semibold">{{ publi.news1 }}</p>{% endif %}
<div class="mt-auto">
{% if publi.news2 %}
<a href="{{ publi.news2 }}" title="News" class="me-3"><i class="fas fa-newspaper"></i> Media Article</a>
{% endif %}
{% if publi.video %}
<a href="{{ publi.video }}" title="Video"><i class="fab fa-youtube"></i> YouTube</a>
{% endif %}
</div>
</div>
</div>
</div>
{% endif %}
{% endfor %}
</div>

## More from our group

<div class="list-group list-group-flush" markdown="0">
{% for publi in sorted_publist %}
<div class="list-group-item px-0 py-3 border-bottom">
  <div class="fw-semibold">{{ publi.title }}</div>
  <div class="small text-muted">{{ publi.authors | replace: '\*', '*' }}</div>
  <div class="small"><a href="{{ publi.link.url }}"><em>{{ publi.link.journal }}</em> ({{publi.link.year}}).</a></div>
</div>
{% endfor %}
</div>
