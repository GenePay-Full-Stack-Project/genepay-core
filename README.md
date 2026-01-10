# 🚀 GenePay Core - Repository Setup Scripts

This repository contains automated scripts to clone and set up the complete GenePay microservices ecosystem.

## 📁 Folder Structure

After running the scripts, the following structure will be created:

```
genepay-core/
├── modules/                           # Backend Services
│   ├── genepay-biometric-service/    # Python FastAPI - Face recognition
│   ├── genepay-payment-service/      # Java Spring Boot - Payment processing
│   └── genepay-blockchain-service/   # Node.js - Blockchain integration
├── web/                              # Web Applications
│   ├── genepay-admin-dashboard/      # React - Admin panel
│   └── genepay-blockchain-dashboard/ # React TypeScript - Blockchain explorer
└── mobile/                           # Mobile Applications
    ├── genepay_merchant_app/         # Flutter - Merchant app
    └── genepay_user_app/             # Flutter - User app
```

## 🛠️ Prerequisites

- **Git** must be installed and available in your PATH
- Internet connection to clone repositories from GitHub
- Appropriate permissions to create folders in the current directory

## 📝 Usage Instructions

Choose the script based on your operating system:

### Windows (Command Prompt)
```cmd
clone-repos.bat
```

### Windows (PowerShell)
```powershell
.\clone-repos.ps1
```

**Note:** You may need to enable script execution in PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Linux/macOS (Bash)
```bash
chmod +x clone-repos.sh
./clone-repos.sh
```

## 📦 Repositories Cloned

| Repository | Folder | Technology | Purpose |
|------------|--------|------------|---------|
| [genepay-biometric-service](https://github.com/GenePay-Full-Stack-Project/genepay-biometric-service) | `modules/genepay-biometric-service` | Python, FastAPI | Face recognition & verification |
| [genepay-payment-service](https://github.com/GenePay-Full-Stack-Project/genepay-payment-service) | `modules/genepay-payment-service` | Java, Spring Boot | Payment processing & user management |
| [genepay-blockchain-service](https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-service) | `modules/genepay-blockchain-service` | Node.js, Express | Blockchain audit trail |
| [genepay-admin-dashboard](https://github.com/GenePay-Full-Stack-Project/genepay-admin-dashboard) | `web/genepay-admin-dashboard` | React, JavaScript | Administration panel |
| [genepay-blockchain-dashboard](https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-dashboard) | `web/genepay-blockchain-dashboard` | React, TypeScript | Blockchain transaction explorer |
| [genepay-merchant-app](https://github.com/GenePay-Full-Stack-Project/genepay-merchant-app) | `mobile/genepay_merchant_app` | Flutter, Dart | Merchant mobile application |
| [genepay-user-app](https://github.com/GenePay-Full-Stack-Project/genepay-user-app) | `mobile/genepay_user_app` | Flutter, Dart | User mobile application |

## ✅ What Each Script Does

1. **Creates folder structure**: Automatically creates `modules`, `web`, and `mobile` directories
2. **Clones repositories**: Downloads all 7 GenePay repositories from GitHub
3. **Organizes by type**: Places each repository in the appropriate folder based on its function
4. **Error handling**: Reports success or failure for each cloning operation
5. **Progress tracking**: Shows which repository is being cloned (e.g., [3/7])

## 🔧 Troubleshooting

### Script won't execute
- **Windows**: Right-click the .bat file and select "Run as administrator"
- **PowerShell**: Enable script execution with `Set-ExecutionPolicy`
- **Linux/macOS**: Make the script executable with `chmod +x clone-repos.sh`

### Git not found
- Ensure Git is installed: [Download Git](https://git-scm.com/downloads)
- Verify Git is in PATH by running: `git --version`

### Permission denied
- Ensure you have write permissions in the current directory
- Try running the script from a directory where you have full permissions

### Repository already exists
- Delete or rename existing folders before re-running the script
- Or manually pull updates in each existing repository with `git pull`

## 🔄 Updating Repositories

To update all repositories to their latest versions, navigate to each folder and run:

```bash
git pull origin main
```

Or create an update script that loops through all folders.

## 📞 Support

For issues with individual repositories, please visit the respective GitHub repository:
- Organization: [GenePay-Full-Stack-Project](https://github.com/GenePay-Full-Stack-Project)

## 📄 License

Each repository has its own license. Please refer to individual repository LICENSE files.

## 🤝 Contributing

To contribute to the GenePay project:
1. Fork the relevant repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request to the main repository

---

**Last Updated**: January 2026  
**Maintained by**: GenePay Development Team
