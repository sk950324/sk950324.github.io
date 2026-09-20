---
title: "About Me"
permalink: /
redirect_from:
  - /about/
author_profile: true
---

I am an **M.S. student at Gachon University**, South Korea, conducting research in **2D/3D computer vision for autonomous driving and robotics**.

My research interests include semantic segmentation, BEV perception, multi-task learning, and scene understanding, with a focus on visual perception systems for autonomous driving and robotic vision.

I am always open to collaborations and discussions. Please feel free to [reach out](mailto:{{ site.author.email }}) if you would like to connect or discuss research opportunities.

[Download CV (PDF)]({{ '/utils/Choi_CV.pdf' | relative_url }}){: .btn .btn--primary}
[Google Scholar]({{ site.author.googlescholar }}){: .btn .btn--inverse}

## Research Interests

- 2D/3D Computer Vision
- Autonomous Driving Perception
- Off-Road Semantic Segmentation
- Multi-Task Learning
- Robust Scene Understanding

## Selected Publications

{% assign selected_publications = site.publications | where: 'selected', true | sort: 'year' | reverse %}
{% for publication in selected_publications %}
{% include publication-card.html publication=publication %}
{% endfor %}
