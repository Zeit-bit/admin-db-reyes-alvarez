USE refugio;

SELECT * from Animal;
SELECT * from Recinto;
SELECT * FROM Movimiento order by fecha desc;

START TRANSACTION;

INSERT INTO Animal (id_animal, id_especie, nombre) VALUES (1, 1, 'Jorge');

UPDATE Recinto SET disponibilidad = disponibilidad - 1 WHERE id_recinto = 1;

INSERT INTO Movimiento (id_movimiento, id_animal_id, id_recinto_destino, motivo, fecha)
VALUES (11, 1, 1, 'Jorge acaba de nacer y se le asigno su primer recinto', NOW());

COMMIT;

SELECT * from Animal;
SELECT * from Recinto;
SELECT * FROM Movimiento order by fecha desc;
