# 🚀 Phase 4 – Auto Scaling Group (ASG) with ALB, Target Group, and EC2

This project demonstrates how to set up a scalable web architecture on AWS using:

- ✅ **Auto Scaling Group (ASG)** – Automatically launches and manages EC2 instances.
- ✅ **Application Load Balancer (ALB)** – Distributes incoming traffic.
- ✅ **Target Group (TG)** – Monitors instance health and routes traffic.
- ✅ **EC2 Instances** – Created dynamically via ASG and serve web content.

---

## 🛠️ Components Overview

| Component | Description |
|----------|-------------|
| **ALB** | Accepts incoming traffic on port 80 and forwards it to a Target Group. |
| **Target Group** | Contains EC2 instances registered by ASG, with health checks configured. |
| **ASG** | Automatically launches EC2 instances based on demand. |
| **Launch Template** | Used by ASG to define instance configuration and User Data. |
| **EC2 Instances** | Hosts a simple Apache web server. |

---

## 📦 Launch Template - User Data

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
