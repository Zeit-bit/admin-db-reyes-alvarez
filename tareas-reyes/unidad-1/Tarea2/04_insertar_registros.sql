USE `reyes-alvarez`;

INSERT INTO cliente (DNI, nombre, telefono, email) VALUES
('CLI001', 'Ana Torres', '9991234567', 'ana.torres@email.com'),
('CLI002', 'Luis Mendoza', '9992345678', 'luis.mendoza@email.com'),
('CLI003', 'Carla Ruiz', '9993456789', 'carla.ruiz@email.com'),
('CLI004', 'Diego Herrera', '9994567890', 'diego.herrera@email.com'),
('CLI005', 'Sofia Martinez', '9995678901', 'sofia.martinez@email.com');

INSERT INTO mascota
(id, nombre, especie, raza, fecha_de_nacimiento, DNI_dueno)
VALUES
(1, 'Max', 'Perro', 'Labrador', '2021-03-15', 'CLI001'),
(2, 'Luna', 'Gato', 'Siames', '2022-07-10', 'CLI001'),
(3, 'Rocky', 'Perro', 'Bulldog', '2020-11-05', 'CLI002'),
(4, 'Milo', 'Gato', 'Persa', '2023-01-22', 'CLI003'),
(5, 'Nala', 'Gato', 'Maine Coon', '2021-09-14', 'CLI004'),
(6, 'Kiwi', 'Ave', 'Periquito', '2024-04-18', 'CLI005');

INSERT INTO veterinario (DNI, nombre, especialidad_medica, telefono) VALUES
('VET001', 'Carlos Ramirez', 'Medicina General', '9991112233'),
('VET002', 'Laura Castillo', 'Dermatologia', '9992223344'),
('VET003', 'Miguel Santos', 'Cirugia', '9993334455'),
('VET004', 'Fernanda Lopez', 'Medicina Interna', '9994445566'),
('VET005', 'Jorge Navarro', 'Animales Exoticos', '9995556677');

INSERT INTO atencion_medica
(id, DNI_veterinario, id_mascota, fecha_y_hora, diagnostico, costo)
VALUES
(1, 'VET001', 1, '2026-09-01 10:30:00', 'Infeccion respiratoria leve', 500.00),
(2, 'VET002', 2, '2026-09-02 12:15:00', 'Dermatitis alergica', 650.00),
(3, 'VET003', 3, '2026-09-03 09:00:00', 'Lesion en pata trasera', 800.00),
(4, 'VET004', 4, '2026-09-04 16:45:00', 'Gastroenteritis viral', 550.00),
(5, 'VET005', 6, '2026-09-05 11:20:00', 'Revision general preventiva', 450.00);

INSERT INTO medicamento (id, nombre, fabricante, costo) VALUES
(1, 'Amoxicilina', 'VetPharma', 120.50),
(2, 'Prednisona', 'AnimalCare', 95.00),
(3, 'Meloxicam', 'PetHealth', 180.75),
(4, 'Metronidazol', 'BioVet', 135.25),
(5, 'Vitaminas Aviares', 'ExoticLab', 210.00);

INSERT INTO prescripcion_medica
(id, id_medicamento, id_atencion_medica, indicaciones)
VALUES
(1, 1, 1, '1 capsula cada 12 horas por 7 dias'),
(2, 2, 2, 'Media tableta cada 24 horas por 5 dias'),
(3, 3, 3, '1 tableta cada 24 horas por 4 dias'),
(4, 4, 4, '1 tableta cada 12 horas por 5 dias'),
(5, 3, 2, 'Media tableta cada 24 horas por 3 dias');
