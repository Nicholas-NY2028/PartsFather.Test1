# Mobile Application Project

This project is a cross-platform mobile application built with **Flutter**, designed to support iOS, Android (Google & Huawei/HarmonyOS), and potentially Web/Desktop.

## Features Implemented

1.  **Cross-Platform Architecture**: Uses Flutter to deploy to iOS (Swift), Android (Java/Kotlin), and more.
2.  **User Roles**: Supports `User`, `Dealer`, `Consumer`, and `Supplier` with specific logic (e.g., pricing).
3.  **Authentication**:
    *   Registration Page (`lib/screens/registration_screen.dart`)
    *   Login Page (`lib/screens/login_screen.dart`) - Supports Email, Mobile, Social.
4.  **Wallet & Payments**:
    *   Top up via FPX, Credit Card (Visa/Master).
    *   UI Implementation in `lib/screens/wallet_screen.dart`.
5.  **Product Integration**:
    *   Integration stub for `partsfather.com` in `lib/services/product_service.dart`.
    *   **Private Pricing**: Logic to display different prices based on User Role.
6.  **Database Support**:
    *   **Offline**: Uses `sqflite` (SQLite) for local storage (`lib/services/database_helper.dart`).
    *   **Online**: Architecture ready for REST API syncing.
7.  **Native Enhancements (Java & C++)**:
    *   Includes a `NativeBridge` (`lib/services/native_bridge.dart`) using Flutter MethodChannels.
    *   Android side implementation stub in `MainActivity.java` demonstrating where to add Java/C++ logic.
8.  **CMS Support**:
    *   Designed to support WordPress, Wix, Squarebox via WebView or API integration.

## Project Structure

```
mobile_app/
├── android/            # Native Android Code (Java/Kotlin/C++)
├── ios/                # Native iOS Code (Swift/Obj-C)
├── lib/
│   ├── models/         # Data Models (User, Product, Role)
│   ├── screens/        # UI Screens
│   ├── services/       # API, Database, and Native Bridge services
│   └── main.dart       # Entry point
└── pubspec.yaml        # Dependencies
```

## Platform Support Notes

*   **iOS**: Uses Swift/Objective-C. Open `ios/Runner.xcworkspace` in Xcode.
*   **Android**: Uses Java/Kotlin. Open `android/` in Android Studio.
*   **Huawei / HarmonyOS**: This Flutter app compiles to a standard APK which runs on Huawei devices (AOSP). For native HarmonyOS (Next), use the OpenHarmony Flutter embedding.

## Getting Started

1.  Install Flutter SDK.
2.  Run `flutter pub get` to install dependencies.
3.  Run `flutter run` to launch the app on a connected device or emulator.

## Native Integration (C++/Java)

To add high-performance C++ code:
1.  Add your C++ sources to `android/app/src/main/cpp/`.
2.  Configure CMake in `android/app/build.gradle`.
3.  Call methods via JNI in `MainActivity.java` and expose them to Dart via `MethodChannel`.
