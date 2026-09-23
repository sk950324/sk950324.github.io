---
title: "Curriculum Vitae"
permalink: /cv/
author_profile: true
---

[Download full CV (PDF)]({{ '/utils/SeongkyuChoi_CV.pdf' | relative_url }}){: .btn .btn--primary}

## Education

**Gachon University**, Seongnam, South Korea  
M.S. in Artificial Intelligence, Department of AI & Software | Mar.2024–Aug.2026

GPA: **4.0 / 4.5**

Research areas: computer vision, autonomous driving, off-road perception, and edge AI devices.

**Hansei University**, Gunpo, South Korea  
B.S., Department of International Business | Mar.2019–Feb.2023

**Shingu College**, Seongnam, South Korea  
Associate Degree in Business Administration, Department of Global Business | Mar.2015–Feb.2019  
Transferred to Hansei University.

## Research Interests

- Computer vision for autonomous driving and robotics
- Semantic segmentation in LiDAR point clouds and terrain understanding
- Off-road semantic segmentation under ambiguous boundaries and noisy supervision
- Efficient on-board AI model optimization for edge devices
- Multi-modal perception using camera, LiDAR, and thermal sensors
- 3D occupancy prediction

## Research Experience

**M.S. Student Researcher | Vehicle Intelligence Perception Lab (VIPLAB), Gachon University**  
Mar.2024–Aug.2026

- Developed vision models for autonomous vehicles and robots, including RGB/thermal small-object detection, camera-only traversability estimation, and YOLO–VLM abnormal-situation recognition.
- Built data collection, augmentation, semi-automatic labeling, and iterative training pipelines; analyzed false positives and false negatives to improve perception models.
- Optimized and deployed models using ONNX, TensorRT, C++, and Jetson platforms, and integrated perception modules with ROS2 and Docker.
- Evaluated accuracy, latency, FPS, memory, and power consumption under on-device and integrated-system conditions.

**Research Intern | Vehicle Intelligence Perception Lab (VIPLAB), Gachon University**  
Aug.2023–Feb.2024

Completed a research internship before entering the M.S. program in Artificial Intelligence in March 2024.

## Work Experience

**Engineer | FNS, Korea**  
Jun.2021–Mar.2023

- Inspected, maintained, troubleshot, and recovered equipment used in semiconductor clean processes.
- Conducted pre-shipment and post-shipment equipment checks for operational stability and quality.
- Provided on-site technical support at semiconductor manufacturing sites.
- Analyzed recurring equipment issues and supported preventive actions to improve reliability.

## Projects

### Wide Semantic Mapping for Multi-Robot Systems

**My participation: Apr.2025–Aug.2026** | Mobiltech-led national R&D project  
Funded by the Ministry of SMEs and Startups, Korea  
Role: Off-road Perception Model Development

- Developed RGB–LiDAR semantic segmentation and terrain-aware traversability perception for off-road semantic mapping.
- Achieved **49.3 mIoU for traversable-area recognition** and **47.6 mIoU for semantic segmentation** in first-stage development.

[View project details →]({{ '/projects/' | relative_url }}#wide-semantic-mapping)

### RGB/Thermal Data Pipelines and Long-Range Small-Object Detection

**My participation: Nov.2024–Aug.2026** | Hyundai Rotem  
Role: RGB/Thermal Data Pipeline Development, Object Detection, and On-board Deployment

- Expanded the training dataset from approximately **1,500 to 4,000 images** and reduced labeling time by **91.7%** through semi-automatic labeling and review.
- Deployed a C++/TensorRT pipeline, reducing latency from **28.29 to 14.18 ms** and increasing throughput from **35.3 to 70.5 FPS** while maintaining detection accuracy.

[View project details →]({{ '/projects/' | relative_url }}#rgb-thermal-detection)

### Multi-Task Vehicle Perception and On-board Optimization

**My participation: Apr.2024–Aug.2026** | IITP national R&D project led by HL Mando  
Role: Multi-Task Perception Model Development, Model Lightweighting, and On-device Validation

- Developed and validated object detection, lane-line perception, and drivable-area segmentation on **Jetson AGX Orin**.
- Improved end-to-end throughput from **3.73 to 24.56 FPS** through pipeline optimization and TensorRT FP16, validated over three runs of 1,000 frames.

[View project details →]({{ '/projects/' | relative_url }}#multi-task-perception)

### Camera-Only Traversability Estimation via LiDAR Knowledge Distillation

**My participation: Sep.2024–Feb.2025**  
Sponsor: National IT Industry Promotion Agency (NIPA), with Mobiltech & GINT  
Role: Traversability Perception, Knowledge Distillation, and Camera-Only Distance Estimation

- Developed camera-only perception through LiDAR knowledge distillation, achieving **0.87 mIoU for semantic segmentation** and **0.91 mIoU for traversability classification**.
- Ran segmentation and distance regression on **Jetson Orin Nano** at approximately **0.1 s/frame**.

[View project details →]({{ '/projects/' | relative_url }}#camera-only-traversability)

### YOLO–VLM Abnormal-Situation Recognition for Patrol Robots

**My participation: Nov.2024–Mar.2025** | Neubility  
Role: Dataset Development, Object Detection, VLM Compression, and Robot Integration

- Integrated YOLO detection and VLM situation descriptions in **Descript-YOLO**, using ROS2 and Docker on **Jetson Orin Nano**.
- Applied AWQ to VILA1.5-3B, reducing model size from **10.06 to 1.57 GB** and VRAM usage from **8.34 to 5.59 GB**.

[View project details →]({{ '/projects/' | relative_url }}#patrol-robot-perception)

### Development of Multi-Sensor Fusion Algorithm for Countering Magnetic/Acoustic Stealth Targets

**My participation: Apr.2024–Mar.2025** | LIG Nex1  
Role: Sea-Trial Data Quality Review and Model Evaluation Analysis

- Selected **23 usable files from 46 sea-trial data files** through data-quality screening.
- Compared predictive performance of team-developed models and assessed sensor-data suitability for training.

[View project details →]({{ '/projects/' | relative_url }}#multi-sensor-fusion)

## Publications

{% comment %}All papers are maintained in _publications/*.md and shared with the Publications page.{% endcomment %}
{% assign publications = site.publications | sort: 'year' | reverse %}
{% for publication in publications %}
- {{ publication.authors | replace: 'Seongkyu Choi', '**Seongkyu Choi**' }}. “[{{ publication.title }}]({{ publication.citation_url | default: publication.url | relative_url }})” *{{ publication.venue }}*, {% if publication.volume %}vol. {{ publication.volume }}, {% endif %}{% if publication.pages %}pp. {{ publication.pages }}, {% endif %}{{ publication.year }}.{% if publication.doi %} DOI: [{{ publication.doi }}](https://doi.org/{{ publication.doi }}).{% endif %}
{% endfor %}

## Awards

**President’s Award**, Graduate School, Gachon University | Aug.2026  
Recognized for outstanding academic achievement, exemplary conduct, and service contributing to the graduate school.

**Outstanding Poster Paper Award**, Korean Society of Next-generation Computing Conference, 2024  
“Real-time Performance Optimization of AI Models Using Edge Computing”

## Languages and Certifications

- **TOEIC Speaking:** Advanced Low, **160/200** | Jul.2026
- **ITQ Information Technology Qualification:** Grade A, Korea Productivity Center (KPC) | Dec.2024

## Selected Coursework

| Course | Grade |
| --- | --- |
| Artificial Intelligence | B0 |
| Optimization Theory for Machine Learning | B0 |
| Advanced Topics in AI Autonomous Driving | A0 |
| Internet and Mobile Computing | A0 |
| Fashion Big Data Analysis and Application | A+ |
| Understanding of Advanced Artificial Intelligence | A+ |
| Probabilistic Robotics | A+ |
| Intelligent Vehicle Technology | A+ |

## Technical Skills

- **Languages:** Python, C, C++
- **AI and deployment:** PyTorch, ONNX, TensorRT, AWQ, Jetson AGX Orin, Jetson Orin Nano, Docker, AWS
- **Computer vision:** OpenCV, RGB/thermal object detection, semantic segmentation, knowledge distillation, vision-language models
- **Robotics:** ROS1, ROS2
- **Development tools:** Git, GitHub, VS Code, Anaconda, Android Studio
- **Operating systems:** macOS, Windows, Linux

## Contact

[seongkyu950324@gmail.com](mailto:seongkyu950324@gmail.com)
