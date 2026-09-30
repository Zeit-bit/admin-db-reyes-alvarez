FROM mysql:8.0

COPY initdb_scripts/01_ddl.sql /docker-entrypoint-initdb.d/01_ddl.sql
COPY initdb_scripts/02_dml.sql /docker-entrypoint-initdb.d/02_dml.sql
