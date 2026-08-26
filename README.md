# Training Ledger — GitHub Pages + Supabase

This version keeps the original tracker and adds optional GitHub OAuth.

1. Upload `index.html`, `config.js`, `supabase-schema.sql`, `README.md` to your GitHub Pages repository.
2. Run `supabase-schema.sql` once in Supabase SQL Editor.
3. In Supabase Authentication → Providers, enable GitHub.
4. Configure the GitHub OAuth application in Supabase.
5. Add your exact GitHub Pages URL under Supabase Authentication → URL Configuration.
6. Open the tracker, enter the Supabase Project URL and publishable key, click Connect, then use Sign in with GitHub.

The app still works locally if cloud sync is not configured.
Never expose a Supabase service-role/secret key.
