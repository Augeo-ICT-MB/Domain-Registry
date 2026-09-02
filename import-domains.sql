-- Bulk import from Domain-Portfolio-09-01-2026 (GoDaddy export)
-- Run this in Supabase: SQL Editor → New query → paste → Run.
--
-- Program, account, cost, and detailed notes weren't in the source
-- export, so those are left blank/zero — fill them in from the app
-- afterward. Uses ON CONFLICT so re-running this is safe (won't
-- duplicate rows if a domain is already in the table).

insert into url_registry (id, url, status, keep_cancel, cost, renewal, notes)
values
  ('kbpareacoachconference.com', 'kbpareacoachconference.com', 'live', 'keep', 0, '2027-07-06', 'Imported from GoDaddy portfolio export'),
  ('kcsouthernstore.com', 'kcsouthernstore.com', 'error', 'keep', 0, '2026-07-11', 'GoDaddy status: Redemption - Recovera. Expiration already passed as of import date (2026-09-01) — domain is lapsed and in redemption, needs urgent review.'),
  ('401kraces.com', '401kraces.com', 'live', 'keep', 0, '2027-05-03', 'Imported from GoDaddy portfolio export'),
  ('citizencpr.com', 'citizencpr.com', 'live', 'keep', 0, '2027-05-25', 'Imported from GoDaddy portfolio export'),
  ('citizencpr.org', 'citizencpr.org', 'live', 'keep', 0, '2027-05-26', 'Imported from GoDaddy portfolio export'),
  ('eccuconference.com', 'eccuconference.com', 'live', 'keep', 0, '2026-11-12', 'Imported from GoDaddy portfolio export'),
  ('heartsafe-community.com', 'heartsafe-community.com', 'live', 'keep', 0, '2027-02-01', 'Imported from GoDaddy portfolio export'),
  ('kbpbrandstopten.com', 'kbpbrandstopten.com', 'live', 'keep', 0, '2027-08-04', 'Imported from GoDaddy portfolio export'),
  ('srgtopten.com', 'srgtopten.com', 'live', 'keep', 0, '2026-09-28', 'Imported from GoDaddy portfolio export'),
  ('stillrunningcustomerevent.com', 'stillrunningcustomerevent.com', 'live', 'keep', 0, '2027-07-15', 'Imported from GoDaddy portfolio export'),
  ('thewellingtongroup.com', 'thewellingtongroup.com', 'live', 'keep', 0, '2027-06-25', 'Imported from GoDaddy portfolio export'),
  ('twgevents.com', 'twgevents.com', 'live', 'keep', 0, '2027-07-22', 'Imported from GoDaddy portfolio export'),
  ('wellingtonevent.com', 'wellingtonevent.com', 'live', 'keep', 0, '2026-11-04', 'Imported from GoDaddy portfolio export'),
  ('wellingtonmail.com', 'wellingtonmail.com', 'live', 'keep', 0, '2027-02-08', 'Imported from GoDaddy portfolio export'),
  ('wellingtonreg.com', 'wellingtonreg.com', 'live', 'keep', 0, '2027-01-06', 'Imported from GoDaddy portfolio export'),
  ('wellingtonterms.com', 'wellingtonterms.com', 'live', 'keep', 0, '2027-01-05', 'Imported from GoDaddy portfolio export')
on conflict (id) do nothing;

-- NOT included — two rows in the source screenshot had no visible
-- domain name, only expiration dates:
--   • expiration 2026-11-08 (domain name column was blank/cut off)
--   • expiration 2027-06-03 (domain name column was blank/cut off)
-- Add these manually once you know which domains they are.
