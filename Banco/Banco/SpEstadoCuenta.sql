USE BANCO
GO
SET ANSI_NULLS ON --Detectar valores nulos y validar exceso de la longitud máxima de un carácter
--o columna binaria
GO
SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE IF EXISTS [dbo].banco_dbo_consultarEstadoCuenta
GO 
-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <28/08/2019>
-- Description:	<Procedimiento para consultar estados de cuenta>
-- =============================================
CREATE PROCEDURE banco_dbo_consultarEstadoCuenta
	@Id varchar(100) --Numero de cuenta
AS
BEGIN
	SET NOCOUNT ON; --Evita que se retorne los rows procesados
	BEGIN TRY
		IF @Id IS NULL
		BEGIN
			RETURN -100001; --Id nulo
		END
		DECLARE @idCuentaAhorro int = (SELECT C.ID FROM [dbo].[CuentaAhorro] C WHERE C.NumeroCuenta = @Id)
		DECLARE @depositos int = (SELECT COUNT(*) FROM [dbo].[Movimiento] M WHERE M.NumeroCuenta = @Id)
	    SELECT TOP 8 
			EC.FechaInicio AS FechaEmision, 
			EC.FechaFin AS FechaFin,
			EC.SaldoInicial, 
			EC.SaldoFinal, 
			(EC.Intereses / 100) * EC.SaldoFinal AS InteresesAcu,
			QRCH+QRCA AS CantidadRetiros,
			@depositos AS CantDepositos
			FROM [dbo].[EstadoCuenta] EC WHERE EC.IdCuentaAhorro = @idCuentaAhorro
			ORDER BY EC.FechaInicio DESC
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO