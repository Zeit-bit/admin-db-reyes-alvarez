USE refugio;

START TRANSACTION;

INSERT INTO Animal (id_animal, id_especie, nombre)
VALUES (3, 3, 'Pelusa');

UPDATE Recinto SET disponibilidad = disponibilidad - 1 WHERE id_recinto = 4;

ROLLBACK;
