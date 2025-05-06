use hospitalBoxmanagement;

SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS=0;

DELETE FROM Box;
DELETE FROM Medico;
DELETE FROM TipoBox;
DELETE FROM TipoMedico;

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
('Dr. Juan Pérez', 123456789, '1980-05-15', 12345, 1),
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
('B', 'Disponible', 1),
('B', 'Disponible', 1),
('B', 'Disponible', 1),
('Q', 'Disponible', 2),
('Q', 'Disponible', 2),
('P', 'Disponible', 3),
('P', 'Disponible', 3),
('E', 'Disponible', 4),
('B', 'Mantenimiento', 1),
('Q', 'Disponible', 2),
('P', 'Disponible', 3),
('E', 'Disponible', 4),
('B', 'Disponible', 1),
('Q', 'Mantenimiento', 2),
('P', 'Disponible', 3);

SET FOREIGN_KEY_CHECKS=1;
SET SQL_SAFE_UPDATES = 1;