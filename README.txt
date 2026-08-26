TRAINING LEDGER - CHROME PWA

Files:
- training-ledger.html  main app
- manifest.webmanifest PWA manifest
- sw.js                 offline service worker
- icon-192.png          app icon
- icon-512.png          app icon

IMPORTANT:
A service worker requires HTTPS or localhost. It will NOT work correctly by simply opening the HTML file with file://.

Easiest test:
1. Put all files in one folder.
2. From that folder run: python -m http.server 8080
3. Open Chrome and visit: http://localhost:8080/training-ledger.html
4. Use Chrome's Install button/menu to install the app.

The app continues to save workout/session data locally. No Supabase or login is required for the local app.
