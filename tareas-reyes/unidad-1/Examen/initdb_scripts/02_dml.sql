INSERT INTO refugio.Recinto (id_recinto, nombre, capacidad, disponibilidad) VALUES
  (1, 'Felinos - Zona A', 5, 3),
  (2, 'Cuarentena Aves', 3, 2),
  (3, 'Aviario General', 10, 9),
  (4, 'Reptilario 1', 2, 0),
  (5, 'Bosque de Rescate', 4, 3),
  (6, 'Zona de Primates', 5, 4);

INSERT INTO refugio.Especie (id_especie, nombre) VALUES
  (1, 'Jaguar'),
  (2, 'Tucan'),
  (3, 'Iguana'),
  (4, 'Tortuga'),
  (5, 'Leon'),
  (6, 'Guacamaya'),
  (7, 'Zorro'),
  (8, 'Mono');

INSERT INTO refugio.Animal (id_animal, id_especie, nombre) VALUES
  (2, 2, 'Pancho'),
  (4, 4, 'Lola'),
  (5, 1, 'Manchas'),
  (6, 5, 'Simba'),
  (7, 6, 'Luna'),
  (8, 7, 'Canela'),
  (9, 8, 'Coco'),
  (10, 3, 'Verde');

INSERT INTO refugio.Evaluacion_Medica
  (id_evaluacion_medica, id_animal, diagnostico, tratamiento, estado_animal, fecha) VALUES
  (1, 2, 'Deshidratación leve', 'Hidratación y observación', 'En observación', '2026-09-20 09:00:00'),
  (2, 2, 'Hidratación normalizada', 'Seguimiento preventivo', 'Estable', '2026-09-22 09:00:00'),
  (3, 4, 'Lesión superficial en caparazón', 'Limpieza y curación diaria', 'En recuperación', '2026-09-20 10:00:00'),
  (4, 4, 'Lesión cicatrizada', 'Revisión semanal', 'Estable', '2026-09-25 10:00:00'),
  (5, 5, 'Revisión de ingreso sin lesiones', 'Observación preventiva', 'Estable', '2026-09-20 11:00:00'),
  (6, 6, 'Infección respiratoria', 'Tratamiento indicado y vigilancia', 'Critico', '2026-09-20 12:00:00'),
  (7, 6, 'Mejoría respiratoria', 'Continuar tratamiento indicado', 'En recuperación', '2026-09-24 12:00:00'),
  (8, 7, 'Revisión de ingreso', 'Cuarentena preventiva', 'En observación', '2026-09-20 13:00:00'),
  (9, 7, 'Sin signos de enfermedad', 'Alta de cuarentena', 'Estable', '2026-09-23 13:00:00'),
  (10, 8, 'Bajo peso', 'Plan de alimentación supervisado', 'En recuperación', '2026-09-20 14:00:00'),
  (11, 9, 'Estrés por rescate', 'Observación y adaptación', 'En observación', '2026-09-20 15:00:00'),
  (12, 9, 'Adaptación favorable', 'Seguimiento de rutina', 'Estable', '2026-09-24 15:00:00'),
  (13, 10, 'Revisión de ingreso sin alteraciones', 'Seguimiento preventivo', 'Estable', '2026-09-20 16:00:00');

INSERT INTO refugio.Movimiento
  (id_movimiento, id_animal_id, id_recinto_destino, motivo, fecha) VALUES
  (1, 2, 2, 'Ingreso a Cuarentena Aves', '2026-09-20 08:00:00'),
  (2, 4, 4, 'Ingreso a Reptilario 1', '2026-09-20 08:10:00'),
  (3, 5, 1, 'Ingreso a Felinos - Zona A', '2026-09-20 08:20:00'),
  (4, 6, 1, 'Ingreso a Felinos - Zona A', '2026-09-20 08:30:00'),
  (5, 7, 2, 'Ingreso a Cuarentena Aves', '2026-09-20 08:40:00'),
  (6, 7, 3, 'Traslado de Cuarentena Aves a Aviario General', '2026-09-23 14:00:00'),
  (7, 8, 5, 'Ingreso a Bosque de Rescate', '2026-09-20 08:50:00'),
  (8, 9, 5, 'Alojamiento provisional en Bosque de Rescate', '2026-09-20 09:00:00'),
  (9, 9, 6, 'Traslado de Bosque de Rescate a Zona de Primates', '2026-09-24 16:00:00'),
  (10, 10, 4, 'Ingreso a Reptilario 1', '2026-09-20 09:10:00');
