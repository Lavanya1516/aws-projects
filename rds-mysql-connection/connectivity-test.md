# 🔌 Connectivity Test – SQL Electron

## ✅ Settings Used in SQL Electron:

- **Host**: `<RDS-endpoint>.rds.amazonaws.com`
- **Port**: 3306
- **User**: `admin` (or your RDS master username)
- **Password**: (set during creation)
- **Database**: optional (or use `mysql`)

### 💡 Security Group Rules:
- Inbound:
  - Port 3306 from "My IP"
- Outbound:
  - All traffic (default)

## 🧪 Result:
- ✅ Connection Successful
- ✅ Ran sample SELECT query

