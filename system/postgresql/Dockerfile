FROM postgres:15-alpine

# Copy initialization scripts
COPY init-db.sh /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3   CMD pg_isready -U ${POSTGRES_USER} -d ${POSTGRES_DB} || exit 1
