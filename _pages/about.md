---
title: "About Me"
permalink: /
redirect_from:
  - /about/
author_profile: true
---

I received my M.S. in Artificial Intelligence from Gachon University, South Korea, in August 2026. My research focuses on 2D/3D computer vision for autonomous driving and robotics.

Through industry-academic projects, I have worked on data collection and validation, perception model development, and deployment on embedded platforms. My experience includes off-road scene understanding, camera–LiDAR knowledge distillation, RGB/thermal object detection, and vision-language models for robotic perception.

I am interested in building reliable perception systems that connect research with real-world deployment.

[Download CV (PDF)]({{ '/utils/Choi_CV.pdf' | relative_url }}){: .btn .btn--primary}
[Google Scholar]({{ site.author.googlescholar }}){: .btn .btn--inverse}

## Research Interests

- 2D/3D Computer Vision
- Autonomous Driving Perception
- Off-Road Semantic Segmentation
- Multi-Task Learning
- Robust Scene Understanding

## Projects

{% assign selected_projects = site.data.projects | where: 'selected', true %}
{% for project in selected_projects %}
<article class="project-summary">
  <h3><a href="{{ '/projects/' | relative_url }}#{{ project.id }}">{{ project.title | escape }}</a></h3>
  <p>{{ project.summary | escape }}</p>
  <p><strong>{{ project.highlight | escape }}</strong></p>
</article>
{% endfor %}

[View all projects]({{ '/projects/' | relative_url }})

## Publications

{% assign selected_publications = site.publications | where: 'selected', true | sort: 'year' | reverse %}
{% for publication in selected_publications %}
{% include publication-card.html publication=publication %}
{% endfor %}
