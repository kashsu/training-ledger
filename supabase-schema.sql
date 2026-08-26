-- Training Ledger database for Supabase
-- Run this entire script in Supabase SQL Editor.

create table if not exists public.workouts (
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null,
  created_at timestamptz not null default now(),
  primary key (user_id, name)
);

create table if not exists public.training_entries (
  id text primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  date date not null,
  exercise text not null,
  type text not null check (type in ('reps','mins')),
  value numeric not null check (value > 0),
  created_at timestamptz not null default now()
);

create index if not exists training_entries_user_date_idx
  on public.training_entries(user_id, date desc);

alter table public.workouts enable row level security;
alter table public.training_entries enable row level security;

drop policy if exists "Users can read own workouts" on public.workouts;
create policy "Users can read own workouts"
on public.workouts for select
using (auth.uid() = user_id);

drop policy if exists "Users can insert own workouts" on public.workouts;
create policy "Users can insert own workouts"
on public.workouts for insert
with check (auth.uid() = user_id);

drop policy if exists "Users can update own workouts" on public.workouts;
create policy "Users can update own workouts"
on public.workouts for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

drop policy if exists "Users can delete own workouts" on public.workouts;
create policy "Users can delete own workouts"
on public.workouts for delete
using (auth.uid() = user_id);

drop policy if exists "Users can read own entries" on public.training_entries;
create policy "Users can read own entries"
on public.training_entries for select
using (auth.uid() = user_id);

drop policy if exists "Users can insert own entries" on public.training_entries;
create policy "Users can insert own entries"
on public.training_entries for insert
with check (auth.uid() = user_id);

drop policy if exists "Users can update own entries" on public.training_entries;
create policy "Users can update own entries"
on public.training_entries for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

drop policy if exists "Users can delete own entries" on public.training_entries;
create policy "Users can delete own entries"
on public.training_entries for delete
using (auth.uid() = user_id);
