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

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4 mb-5" markdown="0">
{% for publi in sorted_publist %}
{% if publi.highlight == 1 %}
<div class="col">
<div class="card h-100 border-0 card-hover pub-card">
<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="card-img-top">
<div class="card-body d-flex flex-column">
<h5 class="card-title">
  {{ publi.title | markdownify | remove: '<p>' | remove: '</p>' }}
  {% if publi.description %}
  <button type="button" class="pub-info-btn btn btn-link btn-sm p-0 ms-1" tabindex="0" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="top" data-bs-custom-class="pub-popover" title="{{ publi.title | strip_html | escape }}" data-bs-content="{{ publi.description | strip_html | escape }}" aria-label="About this paper"><i class="fas fa-circle-info"></i></button>
  {% endif %}
</h5>
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

<hr class="section-divider">

## More from our group

<div class="list-group list-group-flush" markdown="0">
{% for publi in sorted_publist %}
<div class="list-group-item px-0 py-3 border-bottom d-flex align-items-center">
  {% if publi.image %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="pub-list-thumb me-3" alt="">
  {% else %}
  <div class="pub-list-thumb pub-list-thumb-placeholder me-3"></div>
  {% endif %}
  <div>
    <div class="fw-semibold">
      {{ publi.title | markdownify | remove: '<p>' | remove: '</p>' }}
      {% if publi.description %}
      <button type="button" class="pub-info-btn btn btn-link btn-sm p-0 ms-1" tabindex="0" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="top" data-bs-custom-class="pub-popover" title="{{ publi.title | strip_html | escape }}" data-bs-content="{{ publi.description | strip_html | escape }}" aria-label="About this paper"><i class="fas fa-circle-info"></i></button>
      {% endif %}
    </div>
    <div class="small text-muted">{{ publi.authors | replace: '\*', '*' }}</div>
    <div class="small"><a href="{{ publi.link.url }}"><em>{{ publi.link.journal }}</em> ({{publi.link.year}}).</a></div>
  </div>
</div>
{% endfor %}
</div>

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
