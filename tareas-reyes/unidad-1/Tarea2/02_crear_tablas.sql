USE `reyes-alvarez`;

CREATE TABLE cliente (
    DNI VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE mascota (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    especie VARCHAR(50),
    raza VARCHAR(50),
    fecha_de_nacimiento DATE,
    DNI_dueno VARCHAR(20) NOT NULL
);

CREATE TABLE veterinario (
    DNI VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100),
    especialidad_medica VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE atencion_medica (
    id INT PRIMARY KEY,
    DNI_veterinario VARCHAR(20) NOT NULL,
    id_mascota INT NOT NULL,
    fecha_y_hora TIMESTAMP,
    diagnostico VARCHAR(255),
    costo DECIMAL(10,2)
);

CREATE TABLE medicamento (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    fabricante VARCHAR(100),
    costo DECIMAL(10,2)
);

CREATE TABLE prescripcion_medica (
    id INT PRIMARY KEY,
    id_medicamento INT NOT NULL,
    id_atencion_medica INT NOT NULL,
    indicaciones VARCHAR(255)
);
