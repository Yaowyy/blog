-- Neon Hustle: monthly leaderboard (run once in Supabase → SQL Editor). Safe to run again.
-- One row per account per month ('YYYY-MM', London time) holding what that account EARNED in that month:
-- exp gained, deals done, enemies slain. The game sends what it earned since its last save; the server adds it up.
create table if not exists public.leaderboard_monthly (
  user_id    uuid not null references auth.users (id) on delete cascade,
  month      text not null,
  hero_name  text   not null default '',
  picture    text   not null default 'heroPortrait',
  level      int    not null default 1,
  exp        bigint not null default 0,
  deals      int    not null default 0,
  kills      int    not null default 0,
  updated_at timestamptz not null default now(),
  primary key (user_id, month)
);
alter table public.leaderboard_monthly enable row level security;
drop policy if exists "anyone can read the monthly leaderboard" on public.leaderboard_monthly;
create policy "anyone can read the monthly leaderboard" on public.leaderboard_monthly for select to anon, authenticated using (true);

create or replace function public.submit_monthly(p_month text, p_name text, p_level int, p_exp bigint, p_deals int, p_kills int, p_picture text default 'heroPortrait')
returns void language plpgsql security definer set search_path = public as $$
declare cur text := to_char(now() at time zone 'Europe/London', 'YYYY-MM');
begin
  if auth.uid() is null then raise exception 'not logged in'; end if;
  if p_month is distinct from cur then return; end if;   -- earnings from a month that's over are dropped
  insert into public.leaderboard_monthly as l (user_id, month, hero_name, picture, level, exp, deals, kills, updated_at)
  values (auth.uid(), cur, left(coalesce(p_name, ''), 10), left(coalesce(p_picture, 'heroPortrait'), 40), greatest(1, least(coalesce(p_level, 1), 20)),
          greatest(0, least(coalesce(p_exp, 0), 100000)), greatest(0, least(coalesce(p_deals, 0), 1000)), greatest(0, least(coalesce(p_kills, 0), 2000)), now())
  on conflict (user_id, month) do update set
    hero_name = excluded.hero_name, picture = excluded.picture, level = greatest(l.level, excluded.level),
    exp = l.exp + excluded.exp, deals = l.deals + excluded.deals, kills = l.kills + excluded.kills,
    updated_at = case when excluded.exp + excluded.deals + excluded.kills > 0 then now() else l.updated_at end;
end $$;
revoke all on function public.submit_monthly(text, text, int, bigint, int, int, text) from public, anon;
grant execute on function public.submit_monthly(text, text, int, bigint, int, int, text) to authenticated;

create index if not exists leaderboard_monthly_exp_idx   on public.leaderboard_monthly (month, exp desc);
create index if not exists leaderboard_monthly_deals_idx on public.leaderboard_monthly (month, deals desc);
create index if not exists leaderboard_monthly_kills_idx on public.leaderboard_monthly (month, kills desc);

grant usage on schema public to anon, authenticated;
grant select on table public.leaderboard_monthly to anon, authenticated;
notify pgrst, 'reload schema';
