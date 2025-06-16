# 📘 Notes & Issues Faced

## 🔍 Issues Faced
- ❌ ALB health checks were failing due to SG misconfig.
- ❌ Initially forgot to add HTTP access from ALB → EC2.
- ❌ Forgot to add User Data → Apache wasn't running.

## ✅ Fixes
- Added **inbound HTTP from ALB-SG to ASG-SG**
- Added **User Data** in Launch Template to install & start Apache.
- Tested via `curl localhost` and ALB DNS.

## 📚 Learnings
- Health checks = KEY. Always check SG rules + Apache status.
- Use `curl -I localhost` to verify web server is returning 200.
- Target tracking is easier than step scaling for CPU-based scaling.

---

