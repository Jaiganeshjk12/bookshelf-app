#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z postgres 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

psql -U $POSTGRES_USER -h postgres.bookshelf-app.svc.cluster.local -c "\i 2-insert.sql"
