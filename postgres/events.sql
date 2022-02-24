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
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:23:54 Europe/Berlin',
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:17 Europe/Berlin',
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:17 Europe/Berlin'
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
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:01 Europe/Berlin',
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:09 Europe/Berlin',
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:09 Europe/Berlin'
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
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:03 Europe/Berlin',
  TIMESTAMP WITH TIME ZONE '2022-02-24 10:24:48 Europe/Berlin'
);
