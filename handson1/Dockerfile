FROM postgres:13-alpine

# Install PostGIS extension
RUN apk update && \
    apk add --no-cache postgresql-client postgis

# Copy the initialization script and entrypoint script to the container
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

# Grant execution permissions to the entrypoint script
RUN chmod +x /docker-entrypoint.sh

# Expose the default PostgreSQL port
EXPOSE 5432

# Start the PostgreSQL server
CMD ["postgres"]
