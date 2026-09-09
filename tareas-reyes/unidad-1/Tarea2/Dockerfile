FROM mysql:8
ENV MYSQL_ROOT_PASSWORD=root

# Declaración explícita de volumen
VOLUME ["/var/lib/mysql"]

COPY 01_crear_base_de_datos.sql /docker-entrypoint-initdb.d/
COPY 02_crear_tablas.sql /docker-entrypoint-initdb.d/
COPY 03_crear_relaciones.sql /docker-entrypoint-initdb.d/
COPY 04_insertar_registros.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
