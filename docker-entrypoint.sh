#!/bin/bash
set -e

echo "⏳ Waiting for database..."
# Optional: wait for MySQL to be ready
until nc -z "$DB_HOST" "$DB_PORT"; do
  sleep 1
done
echo "✅ Database is ready."

echo "🔍 Running tests..."
python manage.py test tests/ --noinput

echo "⚙️ Running setupdata..."
python manage.py setupdata

echo "🚀 Starting Django server..."
exec python manage.py runserver 0.0.0.0:8000

