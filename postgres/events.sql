-- duration: 7 ms
INSERT INTO events (
  source,
  target,
  payload,
  created_at,
  updated_at,
  finished_at
) VALUES (
  'source-1',
  'target-1',
  'payload-1',
  now() - '0.12 hours'::interval,
  now() - '0.05 hours'::interval,
  now() - '0.05 hours'::interval
);

-- duration: 4 ms
INSERT INTO events (
  source,
  target,
  payload,
  created_at,
  updated_at,
  finished_at
) VALUES (
  'source-2',
  'target-1',
  'payload-2',
  now() - '0.15 hours'::interval,
  now() - '0.11 hours'::interval,
  now() - '0.11 hours'::interval
);

-- duration: 5 ms
INSERT INTO events (
  source,
  target,
  payload,
  created_at,
  updated_at,
  finished_at
) VALUES (
  'source-3',
  'target-2',
  'payload-3',
  now() - '0.06 hours'::interval,
  now() - '0.01 hours'::interval,
  now() - '0.01 hours'::interval
);
