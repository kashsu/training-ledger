# Training Ledger — Local First + Supabase

Local browser storage is always the source of truth.

- Add/edit/delete workouts and sessions always save locally first.
- Supabase is optional.
- When connected and signed in with GitHub, the app pushes local workouts and sessions to Supabase.
- Cloud failures never prevent local use.
- The database schema is unchanged.

GitHub OAuth must be enabled in Supabase Authentication → Providers, and the GitHub Pages URL must be configured under Authentication → URL Configuration.
