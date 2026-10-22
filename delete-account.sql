-- Neon Hustle: players can delete their own account (UK GDPR right to erasure).
-- Run once in Supabase → SQL Editor. Safe to run again.
-- The game calls this from Menu → Settings → delete account.
-- It removes the logged-in player's rows from every public table that has a user_id column
-- (saves, leaderboard, leaderboard_monthly, hero_names, active_sessions, and any future ones),
-- then deletes the login itself from auth.users.
create or replace function public.delete_my_account()
returns void language plpgsql security definer set search_path = public, auth as $$
declare
  uid uuid := auth.uid();
  t record;
begin
  if uid is null then raise exception 'not logged in'; end if;
  for t in
    select c.table_name from information_schema.columns c
    join information_schema.tables tb on tb.table_schema = c.table_schema and tb.table_name = c.table_name
    where c.table_schema = 'public' and c.column_name = 'user_id' and tb.table_type = 'BASE TABLE'
  loop
    execute format('delete from public.%I where user_id = $1', t.table_name) using uid;
  end loop;
  delete from auth.users where id = uid;
end $$;

revoke all on function public.delete_my_account() from public, anon;
grant execute on function public.delete_my_account() to authenticated;
notify pgrst, 'reload schema';
