FROM mysql:8
RUN echo "USE mysql;" > /docker-entrypoint-initdb.d/timezones.sql &&  mysql_tzinfo_to_sql /usr/share/zoneinfo >> /docker-entrypoint-initdb.d/timezones.sql

COPY 0_setup_structure.sql /docker-entrypoint-initdb.d
COPY 1_insert_example_data.sql /docker-entrypoint-initdb.d