CREATE TABLE Adopción 
(
IdAdopcion int IDENTITY(1,1) PRIMARY KEY NOT NULL,
IdPerro As int,
IdAdoptante As int,
FechaAdopcion As Date,
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
Telefono As Varchar(10)
)
GO


CREATE TABLE Visita 
(
IdVisita int IDENTITY(1,1) PRIMARY KEY NOT NULL,
IdAdoptante As int,
Lugar As varchar(50),
FechaVisita AS Date,
FechaProximaVisita As varchar(50),
NombreVisitante As Varchar(50),
Observaciones As varchar(50)
CONSTRAINT fk_IdAdoptante_Visita FOREIGN KEY (IdAdoptante) REFERENCES Adoptante(IdAdoptante)
)
GO