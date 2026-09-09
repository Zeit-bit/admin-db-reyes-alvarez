USE `reyes-alvarez`;

ALTER TABLE mascota
ADD CONSTRAINT fk_mascota_cliente
FOREIGN KEY (DNI_dueno)
REFERENCES cliente(DNI);

ALTER TABLE atencion_medica
ADD CONSTRAINT fk_atencion_mascota
FOREIGN KEY (id_mascota)
REFERENCES mascota(id);

ALTER TABLE atencion_medica
ADD CONSTRAINT fk_atencion_veterinario
FOREIGN KEY (DNI_veterinario)
REFERENCES veterinario(DNI);

ALTER TABLE prescripcion_medica
ADD CONSTRAINT fk_prescripcion_medicamento
FOREIGN KEY (id_medicamento)
REFERENCES medicamento(id);

ALTER TABLE prescripcion_medica
ADD CONSTRAINT fk_prescripcion_atencion
FOREIGN KEY (id_atencion_medica)
REFERENCES atencion_medica(id);
