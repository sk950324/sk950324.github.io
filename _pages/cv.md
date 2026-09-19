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

**Research Student | Vehicle Intelligence Perception Lab, Gachon University**  
Aug.2023–Aug.2026

- Developed vision models for autonomous vehicles and robots, including RGB/thermal small-object detection, camera-only traversability estimation, and YOLO–VLM abnormal-situation recognition.
- Built data collection, augmentation, semi-automatic labeling, and iterative training pipelines; analyzed false positives and false negatives to improve perception models.
- Optimized and deployed models using ONNX, TensorRT, C++, and Jetson platforms, and integrated perception modules with ROS2 and Docker.
- Evaluated accuracy, latency, FPS, memory, and power consumption under on-device and integrated-system conditions.

## Work Experience

**Engineer | FNS, Korea**  
Jun.2021–Mar.2023

- Inspected, maintained, troubleshot, and recovered equipment used in semiconductor clean processes.
- Conducted pre-shipment and post-shipment equipment checks for operational stability and quality.
- Provided on-site technical support at semiconductor manufacturing sites.
- Analyzed recurring equipment issues and supported preventive actions to improve reliability.

## Projects

### Development of Wide Semantic Map Building and Update Technology for Multi-Robot Systems in Unstructured Outdoor Environments

**Project period: Apr.2025–Mar.2027** | National R&D project led by Mobiltech  
Funded by the Ministry of SMEs and Startups, Korea  
Role: Off-road Perception Model Development

- Developed RGB–LiDAR semantic segmentation for unstructured outdoor environments, using knowledge distillation to transfer RGB-derived features into LiDAR-based learning.
- Developed terrain-aware traversability perception by mapping semantic segmentation results to different levels of driving difficulty.
- Achieved **49.3 mIoU for traversable-area recognition** and **47.6 mIoU for semantic segmentation** in the completed first-stage development.
- Contributed to path similarity recognition and multi-scan change detection for semantic map updates, using structural features from previously traversed and newly acquired sensor data.

### RGB/Thermal Data Pipelines and Long-Range Small-Object Detection

**Project period: Aug.2024–Jul.2026** | Industry-commissioned research for Hyundai Rotem  
Role: RGB/Thermal Data Pipeline Development, Object Detection, and On-board Deployment

- Built RGB/thermal data pipelines covering collection, generative augmentation, quality review, semi-automatic labeling, and iterative retraining; expanded the training dataset from approximately **1,500 to 4,000 images**.
- Combined model-generated labels with manual review, reducing labeling time by **91.7%**; used false-positive, false-negative, and class-confusion analysis to guide retraining.
- Improved nighttime thermal detection **AP from 33.63 to 36.13** and **AP75 from 26.17 to 30.55**.
- Implemented a **PyTorch → ONNX → TensorRT** conversion pipeline and integrated camera input, preprocessing, inference, postprocessing, and output in C++.
- Reduced inference latency from **28.29 to 14.18 ms** and increased throughput from **35.3 to 70.5 FPS**, while maintaining mAP50 of 0.595 and mAP50–95 of 0.354; verified simultaneous processing of at least two cameras.

### Multi-Task Vehicle Perception and On-board Optimization

**Project period: Apr.2024–Aug.2026** | IITP national R&D project led by HL Mando  
Role: Multi-Task Perception Model Development, Model Lightweighting, and On-device Validation

- Combined **YOLOv5 and TwinLiteNet** to perform **object detection, lane-line perception, and drivable-area segmentation** with two models; validated on 10,000 BDD100K images and 4,773 FMTC frames.
- Reduced lane-model refinement from three stages to two, shared refinement heads, and reduced fully connected hidden dimensions; improved latency from **6.5 to 4.8 ms** and throughput from **155.5 to 207.2 FPS**.
- Validated simultaneous FP16, batch-size-one execution on **Jetson AGX Orin**: **31.88 FPS for YOLOv5** and **27.44 FPS for TwinLiteNet**, with **7.88 GiB peak RAM** and **13.74 W average power**.
- Profiled decoding, preprocessing, GPU transfer, inference, postprocessing, visualization, and encoding; identified visualization as the largest output-stage bottleneck (**156.08 of 180.60 ms**).
- Replaced NumPy mask blending with OpenCV, separated decoding/inference/visualization into a three-stage asynchronous pipeline, and applied TensorRT FP16. Improved end-to-end throughput from **3.73 to 24.56 FPS** and model forward latency from **48.29 to 14.0 ms**, validated over three runs of 1,000 frames.

### Camera-Only Traversability Estimation via LiDAR Knowledge Distillation

**Sep.2024–Feb.2025** | Industry-commissioned research for Mobiltech  
Role: Traversability Perception, Knowledge Distillation, and Camera-Only Distance Estimation

- Prepared **10,000 training images and 1,000 evaluation images**, defining seven environment/hazard classes and traversability criteria for agricultural environments.
- Applied **MSFSKD** to transfer 3D spatial information from RGB/LiDAR training into a 2D network, enabling **camera-only inference without an additional LiDAR input**.
- Achieved **0.87 mIoU for semantic segmentation** and **0.91 mIoU for traversability classification**, exceeding the respective targets of 0.50 and 0.55.
- Generated distance ground truth by projecting segmentation labels onto LiDAR points, used median filtering to reject outliers, and designed a **five-block MLP** to estimate distance from object class and bounding-box dimensions.
- Ran camera-only segmentation and distance regression on **Jetson Orin Nano** at approximately **0.1 s/frame**; most reported distance errors were within **0–3 m**. Defined object/terrain-boundary distance outputs and coordinated CAN-interface integration.

### YOLO–VLM Abnormal-Situation Recognition for Patrol Robots

**Oct.2024–Mar.2025** | Industry-commissioned research for Neubility  
Role: Dataset Development, Object Detection, VLM Compression, and Robot Integration

- Reviewed **8,436 abnormal-behavior videos** and a fire dataset of approximately **1.5 million images**, selecting representative samples to build a seven-class patrol-object dataset; used InternVL-based auto-labeling and prepared LoRA training data.
- Trained a **YOLO11n** detector for seven target classes, with reported class-wise accuracy of **66.3–81.7%**.
- Compared VILA, UForm, and SmolVLM under the same on-device conditions. Applied **AWQ to VILA1.5-3B**, reducing model size from **10.06 to 1.57 GB** and VRAM usage from **8.34 to 5.59 GB**.
- Designed **Descript-YOLO**: camera input → YOLO detection → queue-based event conditions → VLM situation description → ROS2 topic output.
- Integrated the perception pipeline using **ROS2 Humble and NVIDIA Docker** on **Jetson Orin Nano**, and validated its applicability to real patrol-robot demonstration environments.

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
