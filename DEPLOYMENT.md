# Deployment Guide for PartsFather.ai

This guide covers how to deploy the Flutter application to the web using **Cloudflare Pages** or **Firebase Hosting**.

## Prerequisites

1.  **Flutter SDK** installed and configured.
2.  **Node.js** (for Firebase CLI) or **Wrangler** (for Cloudflare) installed.
3.  A **Cloudflare** account or **Firebase** project.

## 1. Building for Web

To generate the web assets (HTML/CSS/JS):

```bash
flutter build web --release
```

This will create a `build/web` directory containing the static files.

## 2. Deploying to Cloudflare Pages

Cloudflare Pages is excellent for hosting static Flutter web apps.

### Method A: Drag & Drop (Easiest)
1.  Log in to the [Cloudflare Dashboard](https://dash.cloudflare.com/).
2.  Go to **Workers & Pages** > **Create Application** > **Pages** > **Upload Assets**.
3.  Name your project `partsfather-ai`.
4.  Drag and drop the contents of the `build/web` folder into the upload area.
5.  Click **Deploy Site**.

### Method B: Using Wrangler CLI
1.  Install Wrangler: `npm install -g wrangler`
2.  Login: `wrangler login`
3.  Deploy:
    ```bash
    npx wrangler pages deploy build/web --project-name partsfather-ai
    ```

## 3. Deploying to Firebase Hosting

1.  Install Firebase CLI: `npm install -g firebase-tools`
2.  Login: `firebase login`
3.  Initialize project in your root folder:
    ```bash
    firebase init hosting
    ```
    *   Select your project.
    *   Public directory: `build/web`
    *   Configure as single-page app: **Yes**
4.  Deploy:
    ```bash
    firebase deploy --only hosting
    ```

## 4. Custom Domain Setup (partsfather.ai)

1.  Buy the domain `partsfather.ai` (if not owned).
2.  In Cloudflare Pages settings, go to **Custom Domains**.
3.  Click **Set up a custom domain**.
4.  Enter `partsfather.ai` and follow the DNS configuration steps provided by Cloudflare.

## 5. Performance Optimization

*   **CanvasKit vs HTML**: By default, Flutter uses CanvasKit (better performance, larger download). To force HTML renderer (smaller download, slightly worse text rendering):
    ```bash
    flutter build web --web-renderer html --release
    ```
*   **PWA**: The app is PWA-ready. Ensure `web/manifest.json` is updated with correct branding.
