---
title: "Dynamics and Neural Systems Group - Publications"
layout: gridlay
excerpt: "Dynamics and Neural Systems Group -- Publications."
sitemap: false
permalink: /publications/
---

# Publications

Here we list some key research publications from the Dynamics and Neural Systems Group.

For BD Fulcher's full publication list, see [Google Scholar](https://scholar.google.com.au/citations?user=iQYJOW4AAAAJ).

We include a link to the journal article, alongside a link to an associated YouTube presentation or explainer video, and any associated news article or plain-language summary.

## Recent Highlights

{% assign sorted_publist = site.data.publist | sort: 'link.year' | reverse %}

{% assign number_printed = 0 %}
{% for publi in sorted_publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ publi.title }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-fluid" width="33%" style="float: left" />
  <p>{{ publi.description }}</p>
  <p>{{ publi.authors }}</p>
  <p><a href="{{ publi.link.url }}"><em>{{ publi.link.journal }}</em> ({{publi.link.year}}).</a></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p>
    {% if publi.news2 %}
    <a href="{{ publi.news2 }}" title="News" style="display: inline-block; margin-right: 10px;"><i class="fas fa-newspaper" style="font-size: 20px;"></i><em> Media Article</em></a>
    {% endif %}
    {% if publi.video %}
    <a href="{{ publi.video }}" title="Video" style="display: inline-block; margin-right: 10px;"><i class="fab fa-youtube" style="font-size: 20px;"></i><em> YouTube</em></a>
    {% endif %}
  </p>
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>

## More from our group

{% for publi in sorted_publist %}

  {{ publi.title }}.<br />
  {{ publi.authors }}.
  <a href="{{ publi.link.url }}"><em>{{ publi.link.journal }}</em> ({{publi.link.year}}).</a>

{% endfor %}
