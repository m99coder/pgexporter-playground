-- base line is an update interval of 30s
-- and a full duration of 9 minutes

-- 9m 00s
-- CREATE event 1
INSERT INTO events (
  source,
  target,
  payload,
  created_at
) VALUES (
  'source-1',
  'target-1',
  'payload-1',
  now()
);
SELECT pg_sleep(30);

-- 8m 30s
-- UPDATE event 1
UPDATE events SET updated_at = now() WHERE payload = 'payload-1';
SELECT pg_sleep(30);

-- 8m 00s
-- UPDATE event 1
UPDATE events SET updated_at = now() WHERE payload = 'payload-1';
SELECT pg_sleep(30);

-- 7m 30s
-- UPDATE event 1
UPDATE events SET updated_at = now() WHERE payload = 'payload-1';
SELECT pg_sleep(30);

-- 7m 00s
-- UPDATE event 1
UPDATE events SET updated_at = now() WHERE payload = 'payload-1';
-- CREATE event 2
INSERT INTO events (
  source,
  target,
  payload,
  created_at
) VALUES (
  'source-2',
  'target-1',
  'payload-2',
  now()
);
SELECT pg_sleep(30);

-- 6m 30s
-- FINISH event 1 (2m 24s)
UPDATE events SET updated_at = now(), finished_at = now() WHERE payload = 'payload-1';
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
SELECT pg_sleep(30);

-- 6m 00s
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
SELECT pg_sleep(30);

-- 5m 30s
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
SELECT pg_sleep(30);

-- 5m 00s
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
SELECT pg_sleep(30);

-- 4m 30s
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
SELECT pg_sleep(30);

-- 4m 00s
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
SELECT pg_sleep(30);

-- 3m 30s
-- UPDATE event 2
UPDATE events SET updated_at = now() WHERE payload = 'payload-2';
-- CREATE event 3
INSERT INTO events (
  source,
  target,
  payload,
  created_at
) VALUES (
  'source-3',
  'target-2',
  'payload-3',
  now()
);
SELECT pg_sleep(30);

-- 3m 00s
-- FINISH event 2 (4m 12s)
UPDATE events SET updated_at = now(), finished_at = now() WHERE payload = 'payload-2';
-- UPDATE event 3
UPDATE events SET updated_at = now() WHERE payload = 'payload-3';
SELECT pg_sleep(30);

-- 2m 30s
-- UPDATE event 3
UPDATE events SET updated_at = now() WHERE payload = 'payload-3';
SELECT pg_sleep(30);

-- 2m 00s
-- UPDATE event 3
UPDATE events SET updated_at = now() WHERE payload = 'payload-3';
SELECT pg_sleep(30);

-- 1m 30s
-- UPDATE event 3
UPDATE events SET updated_at = now() WHERE payload = 'payload-3';
SELECT pg_sleep(30);

-- 1m 00s
-- UPDATE event 3
UPDATE events SET updated_at = now() WHERE payload = 'payload-3';
SELECT pg_sleep(30);

-- 0m 30s
-- UPDATE event 3
UPDATE events SET updated_at = now() WHERE payload = 'payload-3';
SELECT pg_sleep(30);

-- 0m 00s
-- FINISH event 3 (3m)
UPDATE events SET updated_at = now(), finished_at = now() WHERE payload = 'payload-3';
