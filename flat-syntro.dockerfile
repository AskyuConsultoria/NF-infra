FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=12345678
ENV MYSQL_DATABASE=syntro_flat

COPY database_hom_syntro_flat.sql  /docker-entrypoint-initdb.d/
