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
  now() - '0.012 seconds'::interval,
  now() - '0.005 seconds'::interval,
  now() - '0.005 seconds'::interval
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
  now() - '0.015 seconds'::interval,
  now() - '0.011 seconds'::interval,
  now() - '0.011 seconds'::interval
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
  now() - '0.006 seconds'::interval,
  now() - '0.001 seconds'::interval,
  now() - '0.001 seconds'::interval
);
