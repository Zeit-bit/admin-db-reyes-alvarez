CREATE ROLE 'rol_recepcion', 'rol_veterinario', 'rol_admin_refugio';

GRANT SELECT, INSERT ON refugio.Especie TO 'rol_recepcion';
GRANT SELECT, INSERT ON refugio.Animal TO 'rol_recepcion';
GRANT SELECT, INSERT ON refugio.Movimiento TO 'rol_recepcion';
GRANT SELECT ON refugio.Recinto TO 'rol_recepcion';
GRANT UPDATE (disponibilidad) ON refugio.Recinto TO 'rol_recepcion';

GRANT SELECT, INSERT, UPDATE ON refugio.Evaluacion_Medica TO 'rol_veterinario';
GRANT SELECT ON refugio.Animal TO 'rol_veterinario';
GRANT SELECT ON refugio.Especie TO 'rol_veterinario';

GRANT ALL PRIVILEGES ON refugio.* TO 'rol_admin_refugio';

CREATE USER 'usr_recepcion1'@'localhost' IDENTIFIED BY '1234_recepcion';
CREATE USER 'usr_vet_mendoza'@'localhost' IDENTIFIED BY '1234_veterinaria';
CREATE USER 'usr_admin_selva'@'localhost' IDENTIFIED BY '1234_admin';

GRANT 'rol_recepcion' TO 'usr_recepcion1'@'localhost';
GRANT 'rol_veterinario' TO 'usr_vet_mendoza'@'localhost';
GRANT 'rol_admin_refugio' TO 'usr_admin_selva'@'localhost';

SET DEFAULT ROLE ALL TO 'usr_recepcion1'@'localhost', 'usr_vet_mendoza'@'localhost', 'usr_admin_selva'@'localhost';
FLUSH PRIVILEGES;
