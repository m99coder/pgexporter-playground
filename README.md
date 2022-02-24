# Prometheus exporter for PostgreSQL Playground

> A `docker compose` based playground to get SQL queries as metrics into Prometheus

## Run

```shell
# start containers
docker compose up -d

# in case we need to rebuilt the images use
docker compose up -d --build

# running services
docker compose ps

# restart a service
docker compose restart pgexporter

# stop a service
docker compose stop grafana

# stop containers and remove volumes
docker compose down --volumes

# stop containers and remove everything
docker compose down --rmi all
```

## Test

```shell
# connect to database to run queries manually
docker exec -it postgres psql -U postgres -d test

# run queries in database
docker exec -it postgres psql -U postgres -d test -f /events.sql
```

## Prometheus

- Have a look at the rate at which the duration changes over time:[`rate(events_duration[15m])`](http://localhost:9090/graph?g0.expr=rate(events_duration%5B15m%5D)&g0.tab=0&g0.stacked=0&g0.show_exemplars=0&g0.range_input=10m)
