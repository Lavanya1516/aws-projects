
---

### ✅ `hostname-behavior.md`

```markdown
# Notes on Behavior of AMI-Based EC2 Instances

## 🧠 Key Points

- When you create an AMI from an EC2, it saves:
  - Installed packages
  - Configuration files
  - Web content
  - Running services

---

## 🔁 Launching from AMI

- Any new EC2 launched from the AMI will start with the same configuration and content as the original.
- It saves time by avoiding manual reconfiguration.

---

## 🔄 Useful for:

- Creating pre-configured instances
- Standardizing environments across teams
- Bootstrapping test/stage/prod setups
- Disaster recovery setups

---

You can always update your base EC2 and recreate a new AMI if changes are needed.

