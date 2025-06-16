# 📈 Target Tracking Scaling Policy – Auto Scaling Based on CPU Utilization

This document explains how we configured **Auto Scaling Group (ASG)** to dynamically scale EC2 instances based on **CPU Utilization**.

---

## 🎯 Goal

Automatically scale **in** or **out** based on CPU load:

- **Target CPU Utilization**: 50%
- **Minimum Instances**: 1
- **Maximum Instances**: 3

---

## 🔧 Steps to Configure

1. Go to **EC2 → Auto Scaling Groups**.
2. Select your ASG → Go to **Automatic Scaling** tab.
3. Click **Add policy** → Choose **Target tracking scaling policy**.
4. Fill in the following:

| Field | Value |
|-------|-------|
| Policy type | Target tracking |
| Metric type | **Average CPU utilization** |
| Target value | **50** |
| Cooldown | Default (300 seconds) |
| Min capacity | 1 |
| Max capacity | 3 |

5. Click **Create**.

---

## 💡 How It Works

- When average CPU across EC2 instances **exceeds 50%**, ASG will **add new EC2s**.
- When CPU drops well **below 50%**, it will **terminate excess EC2s** (never goes below 1).

---

## 🔍 Testing This Policy

To simulate high CPU:

```bash
sudo yum install -y stress
stress --cpu 1 --timeout 600

