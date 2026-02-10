# How to Install and Share PartsFather.ai

This guide explains how to install the app on your devices using the files in this folder.

## 1. Android & Huawei Devices
**File**: `app-release.apk` (Found in `build/app/outputs/flutter-apk/` if build was successful)

1.  **Transfer**: Send the `.apk` file to your phone (via WhatsApp, Telegram, USB, or Google Drive).
2.  **Install**:
    *   Open the file on your phone.
    *   If prompted, allow "Install from Unknown Sources".
    *   Click **Install**.
3.  **Run**: The app "PartsFather.ai" will appear in your app drawer.

*Note: This single APK works for both standard Android phones (Samsung, Pixel) and Huawei devices (HMS/HarmonyOS).*

## 2. iPhone (iOS) Devices
**Requirement**: You need a Mac computer with Xcode installed.

*Why? Apple requires all iOS apps to be signed and built on a Mac.*

1.  **Transfer Source**: Copy this entire `PartsFather_App_Bundle.zip` to a Mac.
2.  **Open in Xcode**:
    *   Unzip the folder.
    *   Navigate to the `ios` folder.
    *   Double-click `Runner.xcworkspace` to open it in Xcode.
3.  **Build**:
    *   Connect your iPhone to the Mac via USB.
    *   Select your iPhone as the target device in Xcode (top left).
    *   Press the **Play** button (Run).
    *   The app will be installed on your iPhone.

## 3. Web Version
**File**: `build/web/` folder

1.  Upload the contents of the `build/web` folder to any web host (Cloudflare Pages, Netlify, Firebase).
2.  Share the URL with any device (iPhone, Android, Desktop) to open the app in a browser.
