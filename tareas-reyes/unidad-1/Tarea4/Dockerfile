FROM mysql:8.0

# Copy automatic database setup
COPY 01_create_database.sql /docker-entrypoint-initdb.d/01_create_database.sql

# Copy manual test files
COPY 02_scenario_1_success.sql /sql-tests/02_scenario_1_success.sql
COPY 03_scenario_2_stock_rollback.sql /sql-tests/03_scenario_2_stock_rollback.sql
COPY 04_scenario_3_payment_rollback.sql /sql-tests/04_scenario_3_payment_rollback.sql
