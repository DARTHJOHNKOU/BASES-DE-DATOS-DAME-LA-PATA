CREATE DATABASE Proyecto_DLP
GO

CREATE TABLE Perro
(
	IdPerro INT IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(30),
	FechaIngreso DATE,
	Edad INT,
	Raza VARCHAR(20),
	Tamaño DECIMAL(7,2),
	Esterilizado BIT
)
GO

CREATE TABLE Vacuna
(
	IdPerro INT,
	Fecha DATE,
	TipoVacuna VARCHAR(30),

	FOREIGN KEY(IdPerro) REFERENCES Perro(IdPerro)
)