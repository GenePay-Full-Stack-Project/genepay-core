# GenePay Repository Cloning Script (PowerShell)
# This script clones all GenePay repositories into their respective folders

# Enable strict mode
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GenePay Repository Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Navigate to parent directory
Write-Host "Navigating to parent directory..." -ForegroundColor Yellow
Set-Location ..
Write-Host ""

# Create folder structure
Write-Host "Creating folder structure..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "modules" | Out-Null
New-Item -ItemType Directory -Force -Path "web" | Out-Null
New-Item -ItemType Directory -Force -Path "mobile" | Out-Null
Write-Host "Folders created successfully!" -ForegroundColor Green
Write-Host ""

# Function to clone repository with error handling
function Clone-Repository {
    param(
        [string]$Url,
        [string]$Destination,
        [string]$Name,
        [int]$Number,
        [int]$Total
    )
    
    Write-Host "[$Number/$Total] Cloning $Name..." -ForegroundColor Yellow
    try {
        git clone $Url $Destination
        Write-Host "SUCCESS: $Name cloned" -ForegroundColor Green
        return $true
    }
    catch {
        Write-Host "ERROR: Failed to clone $Name" -ForegroundColor Red
        Write-Host $_.Exception.Message -ForegroundColor Red
        return $false
    }
}

# Clone backend services into modules folder
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cloning Backend Services..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$success = $true

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-biometric-service.git" `
    -Destination "modules\genepay-biometric-service" `
    -Name "genepay-biometric-service" `
    -Number 1 `
    -Total 7
Write-Host ""

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-payment-service.git" `
    -Destination "modules\genepay-payment-service" `
    -Name "genepay-payment-service" `
    -Number 2 `
    -Total 7
Write-Host ""

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-service.git" `
    -Destination "modules\genepay-blockchain-service" `
    -Name "genepay-blockchain-service" `
    -Number 3 `
    -Total 7
Write-Host ""

# Clone web applications into web folder
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cloning Web Applications..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-admin-dashboard.git" `
    -Destination "web\genepay-admin-dashboard" `
    -Name "genepay-admin-dashboard" `
    -Number 4 `
    -Total 7
Write-Host ""

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-dashboard.git" `
    -Destination "web\genepay-blockchain-dashboard" `
    -Name "genepay-blockchain-dashboard" `
    -Number 5 `
    -Total 7
Write-Host ""

# Clone mobile applications into mobile folder
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cloning Mobile Applications..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-merchant-app.git" `
    -Destination "mobile\genepay_merchant_app" `
    -Name "genepay-merchant-app" `
    -Number 6 `
    -Total 7
Write-Host ""

$success = Clone-Repository `
    -Url "https://github.com/GenePay-Full-Stack-Project/genepay-user-app.git" `
    -Destination "mobile\genepay_user_app" `
    -Name "genepay-user-app" `
    -Number 7 `
    -Total 7
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "All repositories have been cloned into their respective folders:" -ForegroundColor Green
Write-Host "  - modules/genepay-biometric-service" -ForegroundColor White
Write-Host "  - modules/genepay-payment-service" -ForegroundColor White
Write-Host "  - modules/genepay-blockchain-service" -ForegroundColor White
Write-Host "  - web/genepay-admin-dashboard" -ForegroundColor White
Write-Host "  - web/genepay-blockchain-dashboard" -ForegroundColor White
Write-Host "  - mobile/genepay_merchant_app" -ForegroundColor White
Write-Host "  - mobile/genepay_user_app" -ForegroundColor White
Write-Host ""
Write-Host "You can now start working on the GenePay project!" -ForegroundColor Green
Write-Host ""

# Pause at the end (optional, can be removed)
Write-Host "Press any key to continue..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
