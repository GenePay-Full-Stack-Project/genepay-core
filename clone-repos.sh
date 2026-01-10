#!/bin/bash
# GenePay Repository Cloning Script (Unix/Linux/macOS)
# This script clones all GenePay repositories into their respective folders

set -e  # Exit on error

echo "========================================"
echo "GenePay Repository Setup"
echo "========================================"
echo ""

# Navigate to parent directory
echo "Navigating to parent directory..."
cd ..
echo ""

# Create folder structure
echo "Creating folder structure..."
mkdir -p modules
mkdir -p web
mkdir -p mobile
echo "Folders created successfully!"
echo ""

# Clone backend services into modules folder
echo "========================================"
echo "Cloning Backend Services..."
echo "========================================"
echo ""

echo "[1/7] Cloning genepay-biometric-service..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-biometric-service.git modules/genepay-biometric-service; then
    echo "SUCCESS: genepay-biometric-service cloned"
else
    echo "ERROR: Failed to clone genepay-biometric-service"
    exit 1
fi
echo ""

echo "[2/7] Cloning genepay-payment-service..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-payment-service.git modules/genepay-payment-service; then
    echo "SUCCESS: genepay-payment-service cloned"
else
    echo "ERROR: Failed to clone genepay-payment-service"
    exit 1
fi
echo ""

echo "[3/7] Cloning genepay-blockchain-service..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-service.git modules/genepay-blockchain-service; then
    echo "SUCCESS: genepay-blockchain-service cloned"
else
    echo "ERROR: Failed to clone genepay-blockchain-service"
    exit 1
fi
echo ""

# Clone web applications into web folder
echo "========================================"
echo "Cloning Web Applications..."
echo "========================================"
echo ""

echo "[4/7] Cloning genepay-admin-dashboard..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-admin-dashboard.git web/genepay-admin-dashboard; then
    echo "SUCCESS: genepay-admin-dashboard cloned"
else
    echo "ERROR: Failed to clone genepay-admin-dashboard"
    exit 1
fi
echo ""

echo "[5/7] Cloning genepay-blockchain-dashboard..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-dashboard.git web/genepay-blockchain-dashboard; then
    echo "SUCCESS: genepay-blockchain-dashboard cloned"
else
    echo "ERROR: Failed to clone genepay-blockchain-dashboard"
    exit 1
fi
echo ""

# Clone mobile applications into mobile folder
echo "========================================"
echo "Cloning Mobile Applications..."
echo "========================================"
echo ""

echo "[6/7] Cloning genepay-merchant-app..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-merchant-app.git mobile/genepay_merchant_app; then
    echo "SUCCESS: genepay-merchant-app cloned"
else
    echo "ERROR: Failed to clone genepay-merchant-app"
    exit 1
fi
echo ""

echo "[7/7] Cloning genepay-user-app..."
if git clone https://github.com/GenePay-Full-Stack-Project/genepay-user-app.git mobile/genepay_user_app; then
    echo "SUCCESS: genepay-user-app cloned"
else
    echo "ERROR: Failed to clone genepay-user-app"
    exit 1
fi
echo ""

echo "========================================"
echo "Setup Complete!"
echo "========================================"
echo ""
echo "All repositories have been cloned into their respective folders:"
echo "  - modules/genepay-biometric-service"
echo "  - modules/genepay-payment-service"
echo "  - modules/genepay-blockchain-service"
echo "  - web/genepay-admin-dashboard"
echo "  - web/genepay-blockchain-dashboard"
echo "  - mobile/genepay_merchant_app"
echo "  - mobile/genepay_user_app"
echo ""
echo "You can now start working on the GenePay project!"
echo ""
