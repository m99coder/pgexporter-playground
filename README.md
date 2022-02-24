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

# stop containers
docker compose down --rmi all
```

## Test

```shell
# connect to database to run queries manually
docker exec -it postgres psql -U postgres -d test
```
