# Common Questions – AMI in AWS

---

### ❓ What is an AMI?

An Amazon Machine Image (AMI) is a snapshot of an EC2 instance used to launch new instances with the same setup.

---

### ❓ What gets saved in an AMI?

- OS and configuration
- Installed software
- Data in root volume (e.g., /var/www, /home/ec2-user)
- Running services and setup at the time of image creation

---

### ❓ Can I launch multiple EC2s from one AMI?

> ✅ Yes. You can launch as many instances as needed from the same AMI.

---

### ❓ Can I modify the AMI?

> ❌ No direct modification.

> ✅ You can:
- Launch an EC2 from the AMI
- Make changes
- Create a new AMI from the updated instance

---

### ❓ Is AMI creation free?

> ✅ Yes, creating an AMI is free.

> ⚠️ But storing AMIs uses Amazon EBS snapshots, which may incur costs if they go beyond free tier.

---

### ❓ When should I use AMIs?

- Creating golden images for production
- Quickly launching pre-configured servers
- Backups before major changes
- Creating base images for Auto Scaling

