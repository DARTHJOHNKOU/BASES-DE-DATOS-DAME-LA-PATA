USE DATABASE Proyecto_DLP

CREATE PROCEDURE SP_InsertAdopcion
    @Fecha As Date,
	@Lugar As varchar(50),
    @IdPerro as int,
	@IdAdoptante as int
	
AS
  BEGIN
      INSERT INTO Adopcion(Fecha, Lugar, IdPerro, IdAdoptante) 
	  VALUES(@Fecha, @Lugar, @IdPerro, @IdAdoptante)
  END
GO



CREATE PROCEDURE SP_DeleteAdopcion
    @IdAdopcion As int

AS
  BEGIN
  DELETE FROM Adopcion WHERE IdAdopcion=@IdAdopcion

  END
GO


CREATE PROCEDURE SP_UpdateAdopcion
   @IdAdopcion as int,
   @Fecha As Date,
	@Lugar As varchar(50),
    @IdPerro as int,
	@IdAdoptante as int
	
AS
  BEGIN
      INSERT INTO Adopcion(IdAdopcion, Lugar, IdPerro, IdAdoptante) 
	  VALUES(@IdAdopcion, @Fecha, @Lugar, @IdPerro, @IdAdoptante)
  END
GO


CREATE PROCEDURE SP_SelectAdopcion
 @IdAdopcion As int
AS
  BEGIN
  SELECT * FROM Adopcion WHERE IdAdopcion=@IdAdopcion

  END
  GO

  CREATE PROCEDURE SP_SelectAdopciones
  AS
    BEGIN
    SELECT * FROM Adopcion
   END
  GO 