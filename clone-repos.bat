@echo off
REM GenePay Repository Cloning Script (Windows Batch)
REM This script clones all GenePay repositories into their respective folders

echo ========================================
echo GenePay Repository Setup
echo ========================================
echo.

REM Create folder structure
echo Creating folder structure...
if not exist "modules" mkdir modules
if not exist "web" mkdir web
if not exist "mobile" mkdir mobile
echo Folders created successfully!
echo.

REM Clone backend services into modules folder
echo ========================================
echo Cloning Backend Services...
echo ========================================
echo.

echo [1/7] Cloning genepay-biometric-service...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-biometric-service.git modules\genepay-biometric-service
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-biometric-service
) else (
    echo SUCCESS: genepay-biometric-service cloned
)
echo.

echo [2/7] Cloning genepay-payment-service...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-payment-service.git modules\genepay-payment-service
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-payment-service
) else (
    echo SUCCESS: genepay-payment-service cloned
)
echo.

echo [3/7] Cloning genepay-blockchain-service...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-service.git modules\genepay-blockchain-service
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-blockchain-service
) else (
    echo SUCCESS: genepay-blockchain-service cloned
)
echo.

REM Clone web applications into web folder
echo ========================================
echo Cloning Web Applications...
echo ========================================
echo.

echo [4/7] Cloning genepay-admin-dashboard...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-admin-dashboard.git web\genepay-admin-dashboard
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-admin-dashboard
) else (
    echo SUCCESS: genepay-admin-dashboard cloned
)
echo.

echo [5/7] Cloning genepay-blockchain-dashboard...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-blockchain-dashboard.git web\genepay-blockchain-dashboard
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-blockchain-dashboard
) else (
    echo SUCCESS: genepay-blockchain-dashboard cloned
)
echo.

REM Clone mobile applications into mobile folder
echo ========================================
echo Cloning Mobile Applications...
echo ========================================
echo.

echo [6/7] Cloning genepay-merchant-app...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-merchant-app.git mobile\genepay_merchant_app
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-merchant-app
) else (
    echo SUCCESS: genepay-merchant-app cloned
)
echo.

echo [7/7] Cloning genepay-user-app...
git clone https://github.com/GenePay-Full-Stack-Project/genepay-user-app.git mobile\genepay_user_app
if errorlevel 1 (
    echo ERROR: Failed to clone genepay-user-app
) else (
    echo SUCCESS: genepay-user-app cloned
)
echo.

echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo All repositories have been cloned into their respective folders:
echo   - modules/genepay-biometric-service
echo   - modules/genepay-payment-service
echo   - modules/genepay-blockchain-service
echo   - web/genepay-admin-dashboard
echo   - web/genepay-blockchain-dashboard
echo   - mobile/genepay_merchant_app
echo   - mobile/genepay_user_app
echo.
echo You can now start working on the GenePay project!
echo.
pause
