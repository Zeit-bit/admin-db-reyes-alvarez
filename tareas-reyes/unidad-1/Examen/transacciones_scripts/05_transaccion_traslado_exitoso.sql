USE refugio;

SELECT * from Recinto;
SELECT * FROM Movimiento order by fecha desc;

START TRANSACTION;

UPDATE Recinto SET disponibilidad = disponibilidad + 1 WHERE id_recinto = 2;
UPDATE Recinto SET disponibilidad = disponibilidad - 1 WHERE id_recinto = 3;

INSERT INTO Movimiento (id_movimiento, id_animal_id, id_recinto_destino, motivo, fecha)
VALUES (12, 2, 3, 'Fin de cuarentena de Pancho', NOW());

COMMIT;

SELECT * from Recinto;
SELECT * FROM Movimiento order by fecha desc;