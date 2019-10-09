USE Banco
GO
SET ANSI_NULLS ON --Detectar valores nulos y validar exceso de la longitud máxima de un carácter
--o columna binaria
GO
SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_actualizarDocumentoIdentificacionBeneficiario]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_actualizarParentescoBeneficiario]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_actualizarEmailBeneficiario]
GO
DROP PROCEDURE IF EXISTS [dbo].banco_dbo_actualizarNombreBeneficiario
GO
DROP PROCEDURE IF EXISTS [dbo].banco_dbo_actualizarFechaNacimientoBeneficiario
GO
DROP PROCEDURE IF EXISTS [dbo].banco_dbo_agregarBeneficiario
GO
DROP PROCEDURE IF EXISTS [dbo].banco_dbo_actualizarPorcentajeBeneficiario
GO
DROP PROCEDURE IF EXISTS [dbo].banco_dbo_actualizarTelefonoBeneficiario
GO
DROP PROCEDURE IF EXISTS [dbo].banco_dbo_eliminarBeneficiario
GO


-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <21/08/2019>
-- Description:	<Procedimiento para editar el nombre de un beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_actualizarNombreBeneficiario
	@NuevoNombre varchar(40),
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --id nulo
		END
		IF @NuevoNombre IS NULL
		BEGIN
			RETURN -100002; --nombre nulo
		END
		--Actualizacion
		UPDATE dbo.Beneficiario
		SET Nombre = @NuevoNombre
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH

END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <21/08/2019>
-- Description:	<Procedimiento para editar el parentesco de un beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_actualizarParentescoBeneficiario
	@NuevoParentesco varchar(100),
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id nulo
		END
		IF @NuevoParentesco IS NULL
		BEGIN
			RETURN -100002; --Nombre nulo
		END
		--Actualizacion
		UPDATE Beneficiario
		--Se busca el ID del tipo de parentesco en base al nombre ingresado
		SET IdTipoParentesco = (SELECT ID FROM dbo.TipoParentesco TP WHERE TP.Nombre = @NuevoParentesco)
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <21/08/2019>
-- Description:	<Procedimiento para editar el porcentaje de un beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_actualizarPorcentajeBeneficiario
	@NuevoPorcentaje int,
	@Id int,
	@IdCuentaAhorro int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id nulo
		END
		IF @IdCuentaAhorro IS NULL
		BEGIN
			RETURN -100002; --IdCuentaAhorro nulo
		END
		IF @NuevoPorcentaje IS NULL
		BEGIN
			RETURN -100003; --NuevoPorcentaje nulo
		END
		--Actualizacion
		UPDATE Beneficiario
		SET	 Porcentaje = @NuevoPorcentaje
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

 --=============================================
 --Author:		<Marcos Mendez>
 --Create date: <21/08/2019>
 --Description:	<Procedimiento para editar la fecha de nacimiento de un beneficiario>
 --=============================================
CREATE PROCEDURE banco_dbo_actualizarFechaNacimientoBeneficiario
	@NuevaFechaNacimiento date,
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id Nulo
		END
		IF @NuevaFechaNacimiento IS NULL		BEGIN
			RETURN -100002; --Fecha nula
		END
		--Actualizacion
		UPDATE Beneficiario
		SET FechaNacimiento = @NuevaFechaNacimiento
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH	
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <21/08/2019>
-- Description:	<Procedimiento para editar el Documento de Identificacion de un beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_actualizarDocumentoIdentificacionBeneficiario
	@NuevoNumeroDocumentoId varchar(20),
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id nulo
		END
		IF @NuevoNumeroDocumentoId IS NULL
		BEGIN
			RETURN -100002; --DocumentoId nulo
		END
		--Actualizacion
		UPDATE Beneficiario 
		SET DocumentoId = @NuevoNumeroDocumentoId
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <21/08/2019>
-- Description:	<Procedimiento para editar el email de un beneficiario
-- =============================================
CREATE PROCEDURE banco_dbo_actualizarEmailBeneficiario
	@NuevoEmail varchar(40),
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id Nulo
		END
		IF @NuevoEmail IS NULL
		BEGIN
			RETURN -100002; --Email nulo
		END
		--Actualizacion
		UPDATE Beneficiario
		SET Email = @NuevoEmail
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH


END
GO

CREATE PROCEDURE banco_dbo_actualizarTelefonoBeneficiario
	@NuevoTelefono varchar(20),
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id nulo
		END
		IF @NuevoTelefono IS NULL
		BEGIN
			RETURN -100002; --Telefono nulo
		END
		--Actualizacion
		UPDATE Beneficiario
		SET Telefono = @NuevoTelefono
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <28/08/2019>
-- Description:	<Procedimiento para agregar un beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_agregarBeneficiario
	@IdTipoDocumentoId nvarchar(40),
	@parentesco char(1),
	@NumeroCuenta nvarchar(100), 
	@DocumentoId nvarchar(20),
	@Nombre varchar(40),
	@Porcentaje int,
	@Activo bit,
	@FechaNacimiento date,
	@Email varchar(40),
	@Telefono nvarchar(40)
	
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @IdTipoDocumentoId IS NULL
		BEGIN
			RETURN -100001; --IdTipoDocumentId nulo
		END
		IF @parentesco IS NULL
		BEGIN
			RETURN -100002; --@parentesco nulo
		END
		IF @DocumentoId IS NULL
		BEGIN
			RETURN -100004; --DocumentoId nulo
		END
		IF @Nombre IS NULL
		BEGIN
			RETURN -100005; --Nombre nulo
		END
		IF @Porcentaje IS NULL
		BEGIN
			RETURN -100006; --Porcentaje nulo
		END
		IF @Activo IS NULL
		BEGIN
			RETURN -100007; --Activo nulo
		END
		IF @FechaNacimiento IS NULL
		BEGIN
			RETURN -100008; --FechaNacimiento nulo
		END
		IF @Email IS NULL
		BEGIN
			RETURN -100010; --Email nulo
		END
		IF @Telefono IS NULL
		BEGIN
			RETURN -100011; --Telefono nulo
		END
		DECLARE @cantActivos int = (SELECT COUNT(*) FROM dbo.Beneficiario B WHERE B.IdCuentaAhorro =  
		(SELECT CA.ID FROM dbo.CuentaAhorro CA WHERE CA.NumeroCuenta = @NumeroCuenta) AND B.Activo = 1) 
		DECLARE @FechaDesactivo date = NULL 
		IF @Activo = 1
		BEGIN
			IF @cantActivos > 3
			BEGIN
				RETURN -100012; --limite de beneficiarios alcanzado
			END
		END
		ELSE
		BEGIN
			SET @FechaDesactivo = (SELECT GETDATE())
		END
		IF @cantActivos = 0
		BEGIN
			SET @Porcentaje = 100
		END
		--Insercion
INSERT INTO [dbo].[Beneficiario]
           ([IdTipoDocumentoId]
           ,[IdTipoParentesco]
		   ,[IdCuentaAhorro]
	       ,[DocumentoId]
           ,[Nombre]
           ,[Porcentaje]
           ,[Activo]
		   ,[FechaNacimiento]
		   ,[FechaDesactivo]
           ,[Email]
           ,[Telefono])
     VALUES
			(
			--(SELECT TD.ID FROM dbo.TipoDocumentoId TD WHERE TD.Nombre = @IdTipoDocumentoId), 
			--(SELECT TP.ID FROM dbo.TipoParentesco TP WHERE TP.Nombre = @parentesco),
			--(SELECT CA.ID FROM dbo.CuentaAhorro CA WHERE CA.NumeroCuenta = @NumeroCuenta),			
			@IdTipoDocumentoId,
			@parentesco,
			@NumeroCuenta,
			@DocumentoId ,
			@Nombre,
			@Porcentaje,
			@Activo,
			@FechaNacimiento,
			@FechaDesactivo,
			@Email ,
			@Telefono )
		RETURN @@IDENTITY; --Se retorna el ID del beneficiario recien insertado
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <28/08/2019>
-- Description:	<Procedimiento para eliminar un beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_eliminarBeneficiario
	@Id int
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id nulo
		END
		--Actualizacion
		UPDATE Beneficiario 
		SET Activo = 0, FechaDesactivo = (SELECT GETDATE())
		WHERE ID = @Id
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO