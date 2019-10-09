USE BANCO
GO
SET ANSI_NULLS ON --Detectar valores nulos y validar exceso de la longitud máxima de un carácter
--o columna binaria
GO
SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE IF EXISTS [dbo].banco_dbo_Login
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <15/09/2019>
-- Description:	<Procedimiento para consultar clientes por su usario y contrasena>
-- =============================================
CREATE PROCEDURE banco_dbo_Login
	@usuario nvarchar(100),
	@contrasena nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @usuario IS NULL
		BEGIN
			RETURN -100001; --usuario nulo
		END
		IF @contrasena IS NULL
		BEGIN
			RETURN -100002; --contrasena nulo
		END
		RETURN (SELECT C.ID FROM dbo.Cliente C WHERE C.Usuario = @usuario AND C.Password = @contrasena)
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

DROP PROCEDURE IF EXISTS [dbo].banco_dbo_consultarBeneficiariosCuenta
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <15/09/2019>
-- Description:	<Procedimiento para consultar beneficiaros por su numero de cuenta>
-- =============================================
CREATE PROCEDURE [dbo].[banco_dbo_consultarBeneficiariosCuenta]
	@numeroCuenta nvarchar(100)
AS
	BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @numeroCuenta IS NULL
		BEGIN
			RETURN -100001; --@numeroCuenta nulo
		END
		RETURN (SELECT CA.ID FROM dbo.CuentaAhorro CA WHERE CA.NumeroCuenta = @numeroCuenta);
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO