use hospitalBoxmanagement;

SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS=0;

TRUNCATE TABLE Box;
TRUNCATE TABLE Medico;
TRUNCATE TABLE TipoBox;
TRUNCATE TABLE TipoMedico;
TRUNCATE TABLE ConsultaMedica;

INSERT INTO TipoMedico (tipoMedico) VALUES 
('Cardiología'),
('Pediatría'),
('Traumatología'),
('Dermatología'),
('Oftalmología'),
('Ginecología'),
('Neurología');

INSERT INTO TipoBox (tipoBox) VALUES
('Consulta General, Camilla, monitor básico, escritorio'),
('Box Quirúrgico, Luces quirúrgicas, monitor avanzado, instrumental'),
('Box Pediatría, Camilla infantil, juguetes, monitor pediátrico'),
('Box Emergencias, Monitor cardiaco, desfibrilador, carro de emergencia');

INSERT INTO Medico (nombre, rut, fechaNacimiento, codigoDeProfesional, idTipoMedico) VALUES
('Dr. Juan JuanJUAn', 123456789, '1980-05-15', 12345, 1),
('Dra. María González', 98765432, '1975-11-22', 54321, 2),
('Dr. Carlos López', 45678901, '1985-03-10', 67890, 3),
('Dra. Ana Silva', 23456789, '1990-07-30', 23456, 1),
('Dr. Pedro Rojas', 34567890, '1978-09-12', 34567, 4),
('Dra. Claudia Méndez', 56789012, '1982-12-05', 56789, 2),
('Dr. Roberto Navarro', 67890123, '1970-02-28', 67891, 5),
('Dra. Francisca Torres', 78901234, '1988-06-18', 78901, 3),
('Dr. Alejandro Díaz', 89012345, '1983-04-22', 89012, 6),
('Dra. Patricia Vargas', 90123456, '1979-08-14', 90123, 7),
('Dr. Manuel Soto', 11223345, '1981-01-25', 11223, 4),
('Dra. Daniela Castro', 22334456, '1986-10-08', 22334, 5),
('Dr. Arturo Medina', 33445567, '1977-07-19', 33445, 1),
('Dra. Valentina Ríos', 44556678, '1984-03-31', 44556, 2),
('Dr. Sergio Peña', 55667789, '1973-09-27', 55667, 3),
('Dra. Camila Flores', 66778890, '1989-11-11', 66778, 6),
('Dr. Nicolás Herrera', 77889901, '1987-05-06', 77889, 7),
('Dra. Sofía Jiménez', 88990012, '1976-12-15', 88990, 4),
('Dr. Gabriel Muñoz', 99001123, '1980-08-24', 99001, 5),
('Dra. Andrea Ruiz', 10111213, '1974-04-17', 10111, 1);

INSERT INTO Box (Pasillo, Estado, idTipoBox) VALUES
('B', 'Disponible', 1), ('B', 'Disponible', 1), ('B', 'Disponible', 1),
('Q', 'Disponible', 2), ('Q', 'Disponible', 2), ('P', 'Disponible', 3),
('P', 'Disponible', 3), ('E', 'Disponible', 4), ('B', 'Mantenimiento', 1),
('Q', 'Disponible', 2), ('P', 'Disponible', 3), ('E', 'Disponible', 4),
('B', 'Disponible', 1), ('Q', 'Mantenimiento', 2), ('P', 'Disponible', 3),
('B', 'Disponible', 1), ('Q', 'Disponible', 2), ('P', 'Mantenimiento', 3),
('E', 'Disponible', 4), ('B', 'Disponible', 1), ('Q', 'Disponible', 2),
('P', 'Disponible', 3), ('E', 'Mantenimiento', 4), ('B', 'Disponible', 1),
('B', 'Disponible', 1), ('Q', 'Disponible', 2), ('P', 'Disponible', 3),
('E', 'Disponible', 4), ('B', 'Mantenimiento', 1), ('Q', 'Disponible', 2),
('P', 'Disponible', 3), ('B', 'Disponible', 1), ('Q', 'Disponible', 2),
('P', 'Mantenimiento', 3), ('E', 'Disponible', 4), ('B', 'Disponible', 1),
('B', 'Disponible', 1), ('Q', 'Disponible', 2), ('P', 'Disponible', 3),
('E', 'Disponible', 4), ('B', 'Disponible', 1), ('Q', 'Mantenimiento', 2),
('P', 'Disponible', 3), ('E', 'Disponible', 4), ('B', 'Disponible', 1),
('Q', 'Disponible', 2), ('P', 'Disponible', 3), ('B', 'Mantenimiento', 1),
('Q', 'Disponible', 2), ('P', 'Disponible', 3), ('E', 'Disponible', 4),
('B', 'Disponible', 1), ('Q', 'Disponible', 2), ('P', 'Disponible', 3),
('E', 'Mantenimiento', 4), ('B', 'Disponible', 1);

INSERT INTO ConsultaMedica (idMedico, idBox, fechaInicio, fechaFinal) VALUES
-- Lunes
(1, 5, '2025-11-03 08:00:00', '2025-11-03 08:30:00'),
(2, 12, '2025-11-03 08:30:00', '2025-11-03 09:00:00'),
(3, 23, '2025-11-03 09:00:00', '2025-11-03 09:30:00'),
(4, 34, '2025-11-03 09:30:00', '2025-11-03 10:00:00'),
(5, 45, '2025-11-03 10:00:00', '2025-11-03 10:30:00'),
(6, 56, '2025-11-03 10:30:00', '2025-11-03 11:00:00'),
(7, 7, '2025-11-03 11:00:00', '2025-11-03 11:30:00'),
(8, 18, '2025-11-03 11:30:00', '2025-11-03 12:00:00'),
(9, 29, '2025-11-03 12:00:00', '2025-11-03 12:30:00'),
(10, 40, '2025-11-03 12:30:00', '2025-11-03 13:00:00'),

-- Martes
(11, 11, '2025-11-04 08:00:00', '2025-11-04 08:30:00'),
(12, 22, '2025-11-04 08:30:00', '2025-11-04 09:00:00'),
(13, 33, '2025-11-04 09:00:00', '2025-11-04 09:30:00'),
(14, 44, '2025-11-04 09:30:00', '2025-11-04 10:00:00'),
(15, 55, '2025-11-04 10:00:00', '2025-11-04 10:30:00'),
(16, 6, '2025-11-04 10:30:00', '2025-11-04 11:00:00'),
(17, 17, '2025-11-04 11:00:00', '2025-11-04 11:30:00'),
(18, 28, '2025-11-04 11:30:00', '2025-11-04 12:00:00'),
(19, 39, '2025-11-04 12:00:00', '2025-11-04 12:30:00'),
(20, 50, '2025-11-04 12:30:00', '2025-11-04 13:00:00'),

-- Miércoles
(1, 15, '2025-11-05 13:00:00', '2025-11-05 13:30:00'),
(2, 26, '2025-11-05 13:30:00', '2025-11-05 14:00:00'),
(3, 37, '2025-11-05 14:00:00', '2025-11-05 14:30:00'),
(4, 48, '2025-11-05 14:30:00', '2025-11-05 15:00:00'),
(5, 9, '2025-11-05 15:00:00', '2025-11-05 15:30:00'),
(6, 20, '2025-11-05 15:30:00', '2025-11-05 16:00:00'),
(7, 31, '2025-11-05 16:00:00', '2025-11-05 16:30:00'),
(8, 42, '2025-11-05 16:30:00', '2025-11-05 17:00:00'),
(9, 3, '2025-11-05 08:00:00', '2025-11-05 08:30:00'),
(10, 14, '2025-11-05 08:30:00', '2025-11-05 09:00:00'),

-- Jueves
(11, 25, '2025-11-06 09:00:00', '2025-11-06 09:30:00'),
(12, 36, '2025-11-06 09:30:00', '2025-11-06 10:00:00'),
(13, 47, '2025-11-06 10:00:00', '2025-11-06 10:30:00'),
(14, 58, '2025-11-06 10:30:00', '2025-11-06 11:00:00'),
(15, 9, '2025-11-06 11:00:00', '2025-11-06 11:30:00'),
(16, 20, '2025-11-06 11:30:00', '2025-11-06 12:00:00'),
(17, 31, '2025-11-06 12:00:00', '2025-11-06 12:30:00'),
(18, 42, '2025-11-06 12:30:00', '2025-11-06 13:00:00'),
(19, 53, '2025-11-06 13:00:00', '2025-11-06 13:30:00'),
(20, 4, '2025-11-06 13:30:00', '2025-11-06 14:00:00'),

-- Viernes
(1, 27, '2025-11-07 14:00:00', '2025-11-07 14:30:00'),
(2, 38, '2025-11-07 14:30:00', '2025-11-07 15:00:00'),
(3, 49, '2025-11-07 15:00:00', '2025-11-07 15:30:00'),
(4, 10, '2025-11-07 15:30:00', '2025-11-07 16:00:00'),
(5, 21, '2025-11-07 16:00:00', '2025-11-07 16:30:00'),
(6, 32, '2025-11-07 16:30:00', '2025-11-07 17:00:00'),
(7, 43, '2025-11-07 08:00:00', '2025-11-07 08:30:00'),
(8, 54, '2025-11-07 08:30:00', '2025-11-07 09:00:00'),
(9, 5, '2025-11-07 09:00:00', '2025-11-07 09:30:00'),
(10, 16, '2025-11-07 09:30:00', '2025-11-07 10:00:00');

SET FOREIGN_KEY_CHECKS=1;
SET SQL_SAFE_UPDATES = 1;