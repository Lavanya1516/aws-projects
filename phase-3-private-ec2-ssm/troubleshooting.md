# Troubleshooting Notes

## 🛑 Issue: EC2 not showing in Session Manager
- ✅ Fix: Attach IAM role with SSM permissions
- ✅ Fix: Ensure VPC endpoints (ssm, ssmmessages, ec2messages) are available
- ✅ Fix: SSM agent should be running: `sudo systemctl status amazon-ssm-agent`

## 🛑 Issue: `curl` failed inside private EC2
- ✅ Fix: Apache not installed – check user data script
- ✅ Fix: No outbound route – ensure correct VPC routing

## 🛑 Issue: "Permission denied (publickey)" when using SSH
- ✅ Fix: Ensure `.pem` key is correctly referenced and has correct permissions

