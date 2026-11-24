-- Run this in Supabase SQL Editor.
-- IMPORTANT: This table contains employee names and consumer mobile numbers.
-- RLS is restricted to authenticated users; do NOT add public/anon read policies.
create table if not exists public.fv_meter_visits (
  id text primary key,
  record jsonb not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
alter table public.fv_meter_visits enable row level security;
drop policy if exists "Authenticated users can read FV visits" on public.fv_meter_visits;
drop policy if exists "Authenticated users can insert FV visits" on public.fv_meter_visits;
drop policy if exists "Authenticated users can update FV visits" on public.fv_meter_visits;
drop policy if exists "Authenticated users can delete FV visits" on public.fv_meter_visits;
create policy "Authenticated users can read FV visits" on public.fv_meter_visits for select to authenticated using (true);
create policy "Authenticated users can insert FV visits" on public.fv_meter_visits for insert to authenticated with check (true);
create policy "Authenticated users can update FV visits" on public.fv_meter_visits for update to authenticated using (true) with check (true);
create policy "Authenticated users can delete FV visits" on public.fv_meter_visits for delete to authenticated using (true);

-- Create a PRIVATE storage bucket named fv-visit-photos in Supabase Storage.
-- Add authenticated-only policies for SELECT, INSERT, UPDATE and DELETE on storage.objects
-- scoped to bucket_id = 'fv-visit-photos'. Do not make the bucket public.
