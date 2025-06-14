# Step-by-Step: Create and Use a Custom AMI in AWS

## 🎯 Objective

Create a custom AMI (Amazon Machine Image) from an EC2 instance and launch new EC2 instances from that AMI with pre-installed software.

---

## 🚀 1. Launch a New EC2 Instance

- AMI: Amazon Linux 2
- Instance Type: t2.micro (Free Tier)
- Auto-assign Public IP: Enabled
- Add this User Data script:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

