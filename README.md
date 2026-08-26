# Training Ledger — GitHub Pages + Supabase + GitHub Login

Upload these files to the GitHub Pages repository:
- index.html
- config.js
- supabase-schema.sql

The database schema does not need to be run again if it has already been run.

Supabase setup:
1. Enable GitHub under Authentication → Providers.
2. Configure the GitHub OAuth app.
3. Set the GitHub Pages URL in Authentication → URL Configuration.
4. Enter the Supabase Project URL and publishable key in the tracker.
5. Sign in with GitHub.

Never expose a Supabase service-role/secret key.
