
# 🚀 AWS Elastic Beanstalk – Node.js Application Deployment

This project demonstrates deploying a **Node.js application** using **AWS Elastic Beanstalk**, focusing on a **single-instance environment** setup.

---

## 📦 Application Overview

- Application Name: `MyApplication`
- Environment Name: `MyApplication-dev`
- Platform: **Node.js 22** on **Amazon Linux 2023 (6.6.0)**
- Deployment: Manual via AWS Console
- Architecture: **Single EC2 instance** (no load balancer)
- Managed by: **AWS CloudFormation**

---

## 🧰 Features Implemented

- ✅ Elastic Beanstalk environment creation via AWS Console
- ✅ Chose **Node.js** as platform with sample application
- ✅ Selected **single-instance** deployment (for dev/testing)
- ✅ Created **IAM Service Role** and **EC2 Instance Profile**
- ✅ Verified deployment using the public domain
- ✅ Explored **health monitoring**, logs, and metrics
- ✅ Observed resources created via **CloudFormation stack**

---

## 🌐 Access URL

> http://myapplication-dev.eba-4p77psq3.us-east-1.elasticbeanstalk.com/

---

## 🧠 Technologies Used

- AWS Elastic Beanstalk
- AWS EC2
- AWS IAM (service roles and instance profiles)
- AWS CloudFormation
- Node.js 22
- Amazon Linux 2023
- Express.js (Node.js web server)

---

## 📁 Project Structure

elastic-beanstalk-nodejs-aws-app/
├── screenshots/ → Dashboard, output
├── README.md → Project summary
└── notes.md → Deployment steps

---

## 📸 Screenshots

- `environment-dashboard.png` – Elastic Beanstalk environment UI
- `application-running.png` – Browser showing deployed app
- `cloudformation-resources.png` – Stack resources provisioned

---

## 🔐 IAM Roles Used

- **Service Role**: `aws-elasticbeanstalk-service-role`
- **EC2 Instance Profile**: `aws-elasticbeanstalk-ec2-role`

Both created manually via IAM during environment setup.

---

## 📌 Key Concepts Practiced

- Elastic Beanstalk environment creation
- Role of CloudFormation in provisioning
- IAM setup for Beanstalk
- Deploying new versions
- Monitoring environment health


