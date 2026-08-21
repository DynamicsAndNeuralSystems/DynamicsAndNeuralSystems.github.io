---
title: "Dynamics and Neural Systems Group -- Research"
layout: textlay
excerpt: "Dynamics and Neural Systems Group -- Research"
sitemap: false
permalink: /research/
---

# Research

<!-- ### Purpose

Unlike many scientists, I did not grow up particularly interested in scientific facts or knowledge, and even initially planned to take a music degree at University. But what draws me to science is its great capacity for curiosity and creativity. The creativity of scientific problem solving is what most excites me and lies at the heart of the science that I aim to do. Many parts of scientific research can be done in a way that is closer to a musician writing a new album or a visual artist pioneering a new style, than a specially trained professional (e.g., accountant or software engineer) putting in the hours applying existing knowledge to achieve a defined goal. Accordingly, our research group aims to search across disciplinary boundaries for new types of problems to tackle, and thus emphasizes training in creative, interdisciplinary thinking, and broad, clear, and accessible communication. -->

<div class="feature-stack" markdown="0">

<div class="feature-panel card-hover">
<h4>Our research</h4>
<img src="{{ site.url }}{{ site.baseurl }}/images/respic/FlyEye.png" style="width: 240px; float: right; border-radius: 10px; margin: 0 0 1rem 1.5rem;" alt="">
<p>The world around us is full of complex dynamical systems, from the weather and climate, to financial markets, to the brain, and each of these systems is characterized by subtle fluctuations that encode information about their underlying mechanisms.
How can we extract and understand these patterns from data, and use them to gain insight into the underlying mechanisms that generate them?
Addressing this question requires connecting deep theoretical concepts about dynamical structure to the real-world applications for which they could be transformative.
Our research is thus highly interdisciplinary, both in the methods that we develop and apply (from physics to statistical learning), and in the processes we study (from fluctuations of single living cells to whole-brain neural activity dynamics).</p>
<p>While our research projects are diverse in their specific aims and applications, we all have a common interest in dynamics, whether we study it on a theoretical level using numerical simulation, to develop new methods to quantify subtle dynamical patterns in real-world data measured from a complex systems, or to apply existing methods in creative ways to new types of problems.</p>
<p class="mb-0">Recent work includes developing new methods for tracking the distance to a critical point from time-series data, modeling complex correlation structures in time series using methods from quantum physics, quantifying time-irreversibility from time-series data, and tracking non-stationary variation in a dynamical recording as a way to better represent the continuous dynamical fluctuations often present in living systems.</p>
</div>

<div class="feature-panel card-hover">
<h4>Our software</h4>
<p>Our group's Github page is <a href="https://github.com/DynamicsAndNeuralSystems">here</a>. You can find software packages for the tools we develop, and investigate code for reproducing results in our published papers.</p>
<p>We have also developed a range of software packages related to time-series analysis (with more on the way!)</p>
<p>Details of open time-series analysis software developed in our group is detailed on a dedicated <a href="https://time-series-features.gitbook.io/time-series-analysis-tools/">website</a>.</p>
<p>Below are a few key packages:</p>
<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 row-cols-xl-5 g-3 mb-0" markdown="0">
{% for software in site.data.software %}
{% include software_card.html software=software %}
{% endfor %}
</div>
</div>

</div>

<!-- __Our research in Complex Systems uses techniques from statistical physics, information theory, and machine learning to extract and understand patterns emerging from big datasets of complex real-world systems.__ -->


<!-- ### Complex Dynamical Systems -->

<!-- The modern world is drowning in data.
Statistical approaches can find patterns hidden in these data, but how can we understand how these patterns come to be?
This requires a combination of skills in statistical analysis and physical modeling.
We use a mix of techniques from statistical physics to machine learning to understand diverse systems, from earthquakes to heart rates, share prices to climate.
If we find informative patterns hidden in abnormal sleep recordings, pathological heart rhythms, or audio measured in Parkinson's disease, we might be able to do some serious good. -->



<!-- ### Neurophysics

The brain is the most complex physical system we know of and its intimidating complexity forms the physical basis for our thoughts and feelings.
The brain's organization, and the mechanisms through which it allows us to make sense of the world around us, are ultimately physical mechanisms that have been selected for by evolution.
From the spatial patterning of the brain’s structural properties, to the role of cortical waves in transmitting information, evolution has exploited a diverse physical processes to enable efficient learning.
Physicists can distil modern neuroscience datasets down to interpretable principles and predictive theories about how the brain works, which may help us to learn from how the brain processes information to better treat brain disease and build new intelligent machines.

Neuroscience is rich in data, but poor in theory.
We have an extraordinary _descriptive_ understanding of the brain: we know how many of its parts are structured, and how they work, and we can measure the brain’s structure and dynamics in unprecedented detail.
But when it comes to the type of understanding that would allow us to make deeper statements about _how_ the brain works, we are more or less at square one.
This makes neurophysics a very exciting area to work in!

__Our research in neurophysics finds and explains patterns in the brain using methods from statistics and physics, with the ultimate aim of understanding principles of brain organization and function in terms of physical mechanisms of information processing.__ -->


<!-- ### CompEngine

We have developed an interactive website, [_CompEngine_](http://www.comp-engine.org), that allows you to upload and explore connections between your time-series data and a library of thousands of diverse empirical and synthetic time series.

<a href="http://www.comp-engine.org" class="btn btn-lg btn-default" role="button">Have a play!</a>
 -->
