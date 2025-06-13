# 🔗 VPC Endpoint Setup (Private EC2 + SSM)

This setup allows a **private EC2 instance** to connect with **AWS Systems Manager** without using a NAT Gateway or Internet Gateway.

---

## ✅ Required Interface Endpoints

Create the following **VPC Interface Endpoints** in your VPC:

- `com.amazonaws.<region>.ssm`
- `com.amazonaws.<region>.ssmmessages`
- `com.amazonaws.<region>.ec2messages`

---

## 🛠️ Steps

1. Go to **VPC → Endpoints → Create Endpoint**.
2. Select the service name (one at a time).
3. Choose your VPC and **private subnet**.
4. Attach a security group allowing **inbound HTTPS (443)**.
5. Click **Create Endpoint**.

Repeat for all services listed.

---

## 🔍 Validate

- Go to **Systems Manager → Session Manager**.
- Start a session with your private EC2.
- If successful, setup is complete ✅

---

## 💰 Cost Info

- **Paid service** (Interface Endpoint pricing)
- Approx. ₹0.39/hour per endpoint + data charges

