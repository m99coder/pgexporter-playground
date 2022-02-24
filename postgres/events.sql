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
  TIMESTAMP '2022-02-24 10:23:54+01',
  TIMESTAMP '2022-02-24 10:24:17+01',
  TIMESTAMP '2022-02-24 10:24:17+01'
);

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
  TIMESTAMP '2022-02-24 10:24:01+01',
  TIMESTAMP '2022-02-24 10:24:09+01',
  TIMESTAMP '2022-02-24 10:24:09+01'
);

INSERT INTO events (
  source,
  target,
  payload,
  created_at,
  updated_at
) VALUES (
  'source-3',
  'target-2',
  'payload-3',
  TIMESTAMP '2022-02-24 10:24:03+01',
  TIMESTAMP '2022-02-24 10:24:48+01'
);
