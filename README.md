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
