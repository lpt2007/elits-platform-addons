#!/bin/bash
set -e

# Ustvari AiStoragE shemo
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    -- Ustvari AiStoragE shemo
    CREATE SCHEMA IF NOT EXISTS aistorage;
    
    -- Ustvari uporabnika za AiStoragE
    CREATE USER aistorage WITH PASSWORD 'aistorage_secure_password_2026';
    GRANT CONNECT ON DATABASE $POSTGRES_DB TO aistorage;
    GRANT USAGE ON SCHEMA aistorage TO aistorage;
    GRANT ALL PRIVILEGES ON SCHEMA aistorage TO aistorage;
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA aistorage TO aistorage;
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA aistorage TO aistorage;
    
    -- Log
    SELECT 'PostgreSQL initialized with AiStoragE schema' AS status;
EOSQL
