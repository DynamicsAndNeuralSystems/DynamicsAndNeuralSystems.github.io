---
title: "Dynamics and Neural Systems Group - Software & Resources"
layout: textlay
excerpt: "Open-source software and research resources from the Dynamics and Neural Systems Group"
sitemap: false
permalink: /software/
---

# Software &amp; Resources

We develop and maintain open-source software for time-series analysis, from large feature-extraction toolkits to compact canonical feature sets, new analysis methods, and benchmark datasets.
Everything is on our [GitHub organization](https://github.com/DynamicsAndNeuralSystems), where you will also find code for reproducing the results in our papers, and documented in detail in our [time-series analysis tools guide](https://time-series-features.gitbook.io/time-series-analysis-tools/).
{: .lead }

<div class="feature-stack" markdown="0">

<div class="feature-panel card-hover">
<h4>Feature-extraction toolkits</h4>
<p>Highly comparative toolkits that compute thousands of time-series features, or hundreds of pairwise interaction statistics, so that the best-performing methods for a problem can be found and interpreted systematically.</p>
<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-4 g-3 mb-0">
{% assign items = site.data.software | where: "group", "toolkits" %}
{% for software in items %}{% include software_card.html software=software %}{% endfor %}
</div>
</div>

<div class="feature-panel card-hover">
<h4>Canonical feature sets</h4>
<p>Small, fast, interpretable sets of features distilled from the full <em>hctsa</em> library, for when you want strong performance without the computational cost.</p>
<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-4 g-3 mb-0">
{% assign items = site.data.software | where: "group", "featuresets" %}
{% for software in items %}{% include software_card.html software=software %}{% endfor %}
</div>
</div>

<div class="feature-panel card-hover">
<h4>Methods</h4>
<p>Implementations of new time-series analysis methods developed in the group.
See also our <a href="https://github.com/DynamicsAndNeuralSystems/feature-mediated-dependency-detection">feature-based information-theoretic method</a> for detecting interpretable, long-timescale pairwise interactions.</p>
<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-4 g-3 mb-0">
{% assign items = site.data.software | where: "group", "methods" %}
{% for software in items %}{% include software_card.html software=software %}{% endfor %}
</div>
</div>

<div class="feature-panel card-hover">
<h4>Datasets</h4>
<p>Curated collections of time series with ground truth, for benchmarking and teaching.</p>
<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-4 g-3 mb-0">
{% assign items = site.data.software | where: "group", "datasets" %}
{% for software in items %}{% include software_card.html software=software %}{% endfor %}
</div>
</div>

<div class="feature-panel card-hover">
<h4>Resources</h4>
<p>Guides and documentation we maintain for our tools, and for doing research more generally.</p>
<div class="resource-list">
{% for resource in site.data.resources %}{% include resource_row.html resource=resource %}{% endfor %}
</div>
</div>

</div>

<p class="small text-muted mt-4">Our software is free for non-commercial use.
For commercial licensing, or help applying these tools to your own data, see <a href="https://www.engineanalytics.org/">Engine Analytics</a>.</p>
