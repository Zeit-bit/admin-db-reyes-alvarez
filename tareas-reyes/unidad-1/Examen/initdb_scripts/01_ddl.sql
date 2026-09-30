CREATE DATABASE IF NOT EXISTS refugio;
USE refugio;

CREATE TABLE Recinto (
  id_recinto INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  capacidad INT NOT NULL CHECK (capacidad > 0),
  disponibilidad INT NOT NULL,
  CONSTRAINT chk_recinto_disponibilidad
    CHECK (disponibilidad >= 0 AND disponibilidad <= capacidad)
);

CREATE TABLE Especie (
  id_especie INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Animal (
  id_animal INT NOT NULL PRIMARY KEY,
  id_especie INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_especie) REFERENCES Especie (id_especie)
);

CREATE TABLE Evaluacion_Medica (
  id_evaluacion_medica INT NOT NULL PRIMARY KEY,
  id_animal INT NOT NULL,
  diagnostico VARCHAR(500) NOT NULL,
  tratamiento VARCHAR(500) NOT NULL,
  estado_animal VARCHAR(50) NOT NULL,
  fecha TIMESTAMP NOT NULL,
  FOREIGN KEY (id_animal) REFERENCES Animal (id_animal)
);

CREATE TABLE Movimiento (
  id_movimiento INT NOT NULL PRIMARY KEY,
  id_animal_id INT NOT NULL,
  id_recinto_destino INT NOT NULL,
  motivo VARCHAR(500) NOT NULL,
  fecha TIMESTAMP NOT NULL,
  FOREIGN KEY (id_animal_id) REFERENCES Animal (id_animal),
  FOREIGN KEY (id_recinto_destino) REFERENCES Recinto (id_recinto)
);
