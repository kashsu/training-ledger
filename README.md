# Training Ledger — Vercel + Supabase

This is the original Training Ledger UI upgraded with optional cloud sync.

## 1. Create the Supabase database

Create a Supabase project, open SQL Editor, and run `supabase-schema.sql`.

## 2. Get the browser-safe credentials

From your Supabase project, copy:
- Project URL
- Publishable key (or legacy anon key if your project exposes it)

Do NOT use a service-role/secret key in the browser.

## 3. Connect the app

Option A: open the deployed app and enter the URL + publishable key in the Cloud sync panel.

Option B: put them in `config.js`:

```js
window.SUPABASE_URL = "https://YOUR-PROJECT.supabase.co";
window.SUPABASE_PUBLISHABLE_KEY = "YOUR-PUBLISHABLE-KEY";
```

## 4. Deploy to Vercel

Put `index.html`, `config.js`, and `supabase-schema.sql` in a GitHub repository, then import that repository into Vercel.

No build command is required. `index.html` is the site entry point.

## Data behavior

- Before sign-in: data is kept locally in the current browser.
- After sign-in: workout definitions and sessions sync to Supabase.
- Existing local data is pushed to the cloud when you first sign in.
- The same account can be used on another phone or computer.
- Excel import/export remains available.

The database uses Row Level Security so each signed-in user can access only their own rows.
