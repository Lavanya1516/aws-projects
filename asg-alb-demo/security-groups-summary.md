# 🔐 Security Groups – Summary

## ALB-SG
- Inbound:
  - HTTP (80) from 0.0.0.0/0
- Outbound:
  - HTTP (80) to EC2 Security Group (ASG-SG)

## ASG-SG (Used by EC2 instances)
- Inbound:
  - HTTP (80) from ALB-SG
- Outbound:
  - All traffic (0.0.0.0/0)

> ✅ SSH is **not required** for ALB or ASG in production

