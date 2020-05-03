FROM mysql
COPY init /docker-entrypoint-initdb.d/
