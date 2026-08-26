# Training Ledger — GitHub Pages + Supabase + GitHub Login

Upload `index.html`, `config.js`, and `supabase-schema.sql` to your GitHub Pages repository.

## Supabase
1. Run `supabase-schema.sql` once in SQL Editor.
2. In Authentication → Providers, enable GitHub.
3. Create a GitHub OAuth App and enter its Client ID/Secret in Supabase.
4. In Authentication → URL Configuration, add your exact GitHub Pages URL to Site URL / Redirect URLs.

The app uses the browser's current GitHub Pages URL as the OAuth redirect URL.

Do not expose a Supabase service-role/secret key.
