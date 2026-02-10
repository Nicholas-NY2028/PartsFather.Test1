@echo off
echo ===================================================
echo   REPAIRING PROJECT STRUCTURE
echo ===================================================
echo.
echo This script will regenerate the missing Android and iOS files.
echo It requires Flutter to be installed on your computer.
echo.

where flutter >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Flutter is not found in your PATH.
    echo Please install Flutter from https://flutter.dev/docs/get-started/install
    echo.
    pause
    exit /b
)

echo Found Flutter! Running 'flutter create .' ...
call flutter create . --project-name=mobile_app

echo.
echo ===================================================
echo   REPAIR COMPLETE
echo ===================================================
echo.
echo You can now open the project in:
echo - Android Studio (open the 'android' folder)
echo - Xcode (open 'ios/Runner.xcworkspace')
echo - VS Code (open this root folder)
echo.
pause
