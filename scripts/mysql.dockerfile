FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=12345678
ENV MYSQL_DATABASE=syntro
ENV MYSQL_USER=syntro
ENV MYSQL_PASSWORD=12345678

COPY database_hom_syntro.sql  /docker-entrypoint-initdb.d/