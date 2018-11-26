CREATE TABLE Adopción 
(
IdAdopcion int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Fecha As Date,
Lugar As varchar(50)
CONSTRAINT fk_IdAdoptante_Adopcion FOREIGN KEY (IdAdoptante) REFERENCES Adoptante(IdAdoptante),
CONSTRAINT fk_IdPerro_Adopcion FOREIGN KEY (IdPerro) REFERENCES Perro(IdPerro)
)
GO


CREATE TABLE Adoptante
(
IdAdoptante int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Nombre AS varchar(50),
Edad As int,
Domicilio As varchar(50),
Telefono As int
)
GO


CREATE TABLE Visita 
(
IdVisita int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Lugar As varchar(50),
Fecha AS Date,
Fecha_Proxima As varchar(50),
Nombre_visitante As Varchar(50),
Observaciones As varchar(50)
CONSTRAINT fk_IdAdoptante_Visita FOREIGN KEY (IdAdoptante) REFERENCES Adoptante(IdAdoptante)
)
GO