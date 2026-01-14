# 🚀 GenePay Core - Central Repository Hub

This is the central repository for the GenePay microservices ecosystem. All GenePay services are organized as **Git submodules** for streamlined development and version control.

## 📁 Repository Structure

The GenePay project is organized with all services as submodules:

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

- **Git 2.13+** (for submodule support)
- Internet connection to clone repositories from GitHub
- Appropriate GitHub access to GenePay-Full-Stack-Project organization

## 🚀 Quick Start

### Clone with All Submodules (Recommended)

```bash
# Clone the repository with all submodules
git clone --recursive https://github.com/GenePay-Full-Stack-Project/genepay-core.git

# Navigate to the directory
cd genepay-core
```

### Clone First, Then Initialize Submodules

```bash
# Clone the main repository
git clone https://github.com/GenePay-Full-Stack-Project/genepay-core.git
cd genepay-core

# Initialize and clone all submodules
git submodule update --init --recursive
```

## 📦 Submodules Overview

All GenePay services are included as Git submodules:

| Repository | Folder | Technology | Purpose |
|------------|--------|------------|---------|
| [genepay-biometric-service](https://github.com/GenePay-Full-Stack-Project/genepay-biometric-service) | `modules/genepay-biometric-service` | Python, FastAPI | Face recognition & verification |
| [genepay-payment-service](https://github.com/GenePay-Full-Stack-Project/genepay-payment-service) | `modules/genepay-payment-service` | Java, Spring Boot | Payment processing & user management |
| [genepay-blockchain-service](https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-service) | `modules/genepay-blockchain-service` | Node.js, Express | Blockchain audit trail |
| [genepay-admin-dashboard](https://github.com/GenePay-Full-Stack-Project/genepay-admin-dashboard) | `web/genepay-admin-dashboard` | React, JavaScript | Administration panel |
| [genepay-blockchain-dashboard](https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-dashboard) | `web/genepay-blockchain-dashboard` | React, TypeScript | Blockchain transaction explorer |
| [genepay-merchant-app](https://github.com/GenePay-Full-Stack-Project/genepay-merchant-app) | `mobile/genepay_merchant_app` | Flutter, Dart | Merchant mobile application |
| [genepay-user-app](https://github.com/GenePay-Full-Stack-Project/genepay-user-app) | `mobile/genepay_user_app` | Flutter, Dart | User mobile application |

## 🔄 Working with Submodules

### Update All Submodules to Latest

```bash
# Update all submodules to their latest commit on the default branch
git submodule update --remote --merge
```

### Update a Specific Submodule

```bash
# Navigate to the submodule
cd modules/genepay-payment-service

# Pull latest changes
git checkout main
git pull origin main

# Go back to root and commit the submodule reference update
cd ../..
git add modules/genepay-payment-service
git commit -m "Update payment service submodule"
```

### Check Submodule Status

```bash
# View status of all submodules
git submodule status

# View details of each submodule
git submodule foreach 'git status'
```

### Pull Latest Changes in All Submodules

```bash
# Pull latest in all submodules
git submodule foreach 'git pull origin main'
```

## 🎯 VS Code Integration

When you open this repository in VS Code:

✅ **Source Control panel automatically detects all submodules**  
✅ Each submodule appears as a separate Git repository  
✅ You can commit, push, and pull changes independently for each service  
✅ All repositories are organized in a single workspace  

### Recommended VS Code Workspace

For better organization, use the included workspace file (if available) or create one:

```json
{
  "folders": [
    { "name": "📦 GenePay Core", "path": "." },
    { "name": "💳 Payment Service", "path": "modules/genepay-payment-service" },
    { "name": "🔐 Biometric Service", "path": "modules/genepay-biometric-service" },
    { "name": "⛓️ Blockchain Service", "path": "modules/genepay-blockchain-service" },
    { "name": "🎛️ Admin Dashboard", "path": "web/genepay-admin-dashboard" },
    { "name": "🔗 Blockchain Dashboard", "path": "web/genepay-blockchain-dashboard" },
    { "name": "📱 Merchant App", "path": "mobile/genepay_merchant_app" },
    { "name": "📲 User App", "path": "mobile/genepay_user_app" }
  ],
  "settings": {
    "git.autoRepositoryDetection": true
  }
}
```

## 🔧 Development Workflow

### Making Changes to a Submodule

1. **Navigate to the submodule directory**:
   ```bash
   cd modules/genepay-payment-service
   ```

2. **Create a feature branch**:
   ```bash
   git checkout -b feature/new-feature
   ```

3. **Make your changes and commit**:
   ```bash
   git add .
   git commit -m "Add new feature"
   git push origin feature/new-feature
   ```

4. **Update the parent repository** (optional):
   ```bash
   cd ../..
   git add modules/genepay-payment-service
   git commit -m "Update payment service to include new feature"
   ```

### Synchronizing Across Team

When a teammate updates a submodule:

```bash
# Pull latest genepay-core changes
git pull

# Update all submodules to match the committed references
git submodule update --init --recursive
```

## 🚨 Important Submodule Notes

- Each submodule is a separate Git repository with its own history
- Commits in submodules don't automatically commit to the parent repository
- Always commit and push changes in the submodule first, then update the parent
- The parent repository tracks specific commits (not branches) of submodules
- Use `git submodule update` after pulling to sync submodule references

## 🔧 Troubleshooting

### Submodules are empty after cloning
```bash
git submodule update --init --recursive
```

### Submodule shows modified but no changes made
```bash
# Reset submodule to the tracked commit
git submodule update --force
```

### Detached HEAD in submodule
```bash
cd modules/genepay-payment-service
git checkout main
```

### Remove a submodule
```bash
# Remove from .gitmodules and .git/config
git submodule deinit -f modules/genepay-biometric-service
git rm -f modules/genepay-biometric-service
rm -rf .git/modules/modules/genepay-biometric-service
```

## 📞 Support

For issues with individual repositories, please visit:
- **Organization**: [GenePay-Full-Stack-Project](https://github.com/GenePay-Full-Stack-Project)
- **Core Repository Issues**: [genepay-core/issues](https://github.com/GenePay-Full-Stack-Project/genepay-core/issues)

## 📄 License

Each submodule repository has its own license. Please refer to individual repository LICENSE files.

## 🤝 Contributing

To contribute to the GenePay project:

1. **Fork the repository** you want to contribute to
2. **Clone your fork** and create a feature branch
3. **Make your changes** following the project's coding standards
4. **Test thoroughly** before submitting
5. **Submit a pull request** to the respective repository

For multi-service changes:
- Submit PRs to each affected submodule repository
- Update the genepay-core submodule references after PRs are merged

---

**Repository Type**: Monorepo with Git Submodules  
**Last Updated**: January 2026  
**Maintained by**: GenePay Development Team  
**Architecture**: Microservices
