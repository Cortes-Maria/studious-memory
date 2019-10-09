USE Banco
GO
SET ANSI_NULLS ON --Detectar valores nulos y validar exceso de la longitud máxima de un carácter
--o columna binaria
GO
SET QUOTED_IDENTIFIER ON
GO

--Se eliminan los SP en caso de que existan
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarMonedaXml]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarTipoDocumentoId]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarTipoCuentaAhorro]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarTipoParentesco]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarCliente]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarCuentaAhorro]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarCuentaObjeto]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarBeneficiario]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_insertarEstadoCuenta]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_limpiarTablas]
GO
DROP PROCEDURE IF EXISTS [dbo].[banco_dbo_ejecutarInserciones]
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de Moneda>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarMonedaXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.Moneda(nombre,simbolo)
		SELECT
			--Se obtienen los datos de las filas del archivo XML
			archivoXml.Moneda.query('nombre').value('.', 'NVARCHAR(100)'),
			archivoXml.Moneda.query('simbolo').value('.', 'NVARCHAR(100)')			
		FROM (SELECT CAST(MY_XML AS xml) --Casting del archivo a XML
			--Se abre el archivo
			FROM OPENROWSET(BULK 'C:\XML\Moneda.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/Moneda') AS archivoXml (Moneda);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de TipoDocumentoId>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarTipoDocumentoIdXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.TipoDocumentoId
		SELECT
			--Se obtienen los datos de las filas del archivo XML
			archivoXml.TipoDocumentoId.query('nombre').value('.', 'NVARCHAR(40)')			
		FROM (SELECT CAST(MY_XML AS xml) --Casting del archivo a XML
			--Se abre el archivo
			FROM OPENROWSET(BULK 'C:\XML\TipoID.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/TipoID') AS archivoXml (TipoDocumentoId);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de TipoCuentaAhorro>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarTipoCuentaAhorroXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.TipoCuentaAhorro
		SELECT
			--Se obtienen la PK del tipo de moneda usada para asi crear la FK que le corresponde
			(SELECT M.ID FROM dbo.Moneda M WHERE M.Simbolo = archivoXml.TipoCuentaAhorro.query('simMoneda').value('.', 'CHAR(1)')),  
			--Se obtienen los datos de las filas del archivo XML
			archivoXml.TipoCuentaAhorro.query('nombre').value('.', 'NVARCHAR(100)'),
			archivoXml.TipoCuentaAhorro.query('tasaIntereses').value('.', 'FLOAT'),
			archivoXml.TipoCuentaAhorro.query('retiros').value('.', 'INT'),
			archivoXml.TipoCuentaAhorro.query('saldoMinimo').value('.', 'MONEY'),
			archivoXml.TipoCuentaAhorro.query('retirosCajero').value('.', 'MONEY'),
			archivoXml.TipoCuentaAhorro.query('multaSaldoMinimo').value('.', 'MONEY'),
			archivoXml.TipoCuentaAhorro.query('montoMensual').value('.', 'MONEY')
		FROM (SELECT CAST(MY_XML AS xml) --Casting del archivo a XML
			--Se abre el archivo
			FROM OPENROWSET(BULK 'C:\XML\TipoCuentaAhorro.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/TipoCuentaAhorro') AS archivoXml (TipoCuentaAhorro);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de TipoParentesco>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarTipoParentescoXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.TipoParentesco
		SELECT
			--Se obtienen los datos de las filas del archivo XML
			archivoXml.TipoParentesco.query('nombre').value('.', 'CHAR(1)'),
			archivoXml.TipoParentesco.query('detalle').value('.', 'NVARCHAR(100)')
		FROM (SELECT CAST(MY_XML AS xml) --Casting del archivo a XML
			--Se abre el archivo
			FROM OPENROWSET(BULK 'C:\XML\Parentesco.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/Parentesco') AS archivoXml (TipoParentesco);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de Cliente>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarClienteXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.Cliente
		SELECT
			(SELECT TD.ID FROM dbo.TipoDocumentoId TD WHERE TD.Nombre = archivoXml.Cliente.query('tipoDocId').value('.', 'NVARCHAR(100)')),  
			--Se obtienen los datos de las filas del archivo XML
			archivoXml.Cliente.query('nombre').value('.', 'NVARCHAR(100)'),
			archivoXml.Cliente.query('fechaNacimiento').value('.', 'DATE'),
			archivoXml.Cliente.query('docID').value('.', 'NVARCHAR(100)'),
			archivoXml.Cliente.query('usuario').value('.', 'NVARCHAR(100)'),
			archivoXml.Cliente.query('contrasenia').value('.', 'NVARCHAR(100)'),
			archivoXml.Cliente.query('telefono1').value('.', 'NVARCHAR(100)')
		FROM (SELECT CAST(MY_XML AS xml) --Casting del archivo a XML
			--Se abre el archivo
			FROM OPENROWSET(BULK 'C:\XML\Cliente.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/Cliente') AS archivoXml (Cliente);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de CuentaAhorro>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarCuentaAhorroXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.CuentaAhorro
		SELECT
			(SELECT TCA.ID FROM dbo.TipoCuentaAhorro TCA WHERE TCA.Nombre = archivoXml.CuentaAhorro.query('idTipoCA').value('.', 'NVARCHAR(100)')),
			(SELECT C.ID FROM dbo.Cliente C WHERE C.DocumentoId = archivoXml.CuentaAhorro.query('idCliente').value('.', 'nvarchar(100)')),
			archivoXml.CuentaAhorro.query('numCuenta').value('.', 'NVARCHAR(100)'),
			archivoXml.CuentaAhorro.query('saldo').value('.', 'MONEY')
		FROM (SELECT CAST(MY_XML AS xml)
			FROM OPENROWSET(BULK 'C:\XML\CuentaAhorro.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/CuentaAhorro') AS archivoXml (CuentaAhorro);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de CuentaObjeto>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarCuentaObjetoXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.CuentaObjeto
		SELECT
			(SELECT CA.ID FROM dbo.CuentaAhorro CA WHERE CA.NumeroCuenta = archivoXml.CuentaObjeto.query('numCuenta').value('.', 'NVARCHAR(100)')),
			archivoXml.CuentaObjeto.query('fechaInicio').value('.', 'DATE'),
			archivoXml.CuentaObjeto.query('fechaFin').value('.', 'DATE'),
			archivoXml.CuentaObjeto.query('saldo').value('.', 'MONEY'),
			archivoXml.CuentaObjeto.query('montoAhorro').value('.', 'MONEY')
		FROM (SELECT CAST(MY_XML AS xml)
			FROM OPENROWSET(BULK 'C:\XML\CuentaObjeto.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/CuentaObjetivo') AS archivoXml (CuentaObjeto);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de Beneficiario>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarBeneficiarioXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.Beneficiario
		SELECT
			(SELECT TOP 1 TD.ID FROM dbo.TipoDocumentoId TD WHERE TD.Nombre = archivoXml.Beneficiario.query('tipoDocId').value('.', 'NVARCHAR(100)')),
			(SELECT TOP 1 TP.ID FROM dbo.TipoParentesco TP WHERE TP.Nombre = archivoXml.Beneficiario.query('parentesco').value('.', 'NVARCHAR(100)')),
			(SELECT TOP 1 CA.ID FROM dbo.CuentaAhorro CA WHERE CA.NumeroCuenta = archivoXml.Beneficiario.query('numCuenta').value('.', 'NVARCHAR(100)')),
			archivoXml.Beneficiario.query('docID').value('.', 'NVARCHAR(20)'),
			archivoXml.Beneficiario.query('nombre').value('.', 'NVARCHAR(40)'),
			archivoXml.Beneficiario.query('porcentajeBeneficio').value('.', 'INT'),
			archivoXml.Beneficiario.query('activo').value('.', 'BIT'),
			archivoXml.Beneficiario.query('fechaNacimiento').value('.', 'DATE'),
			archivoXml.Beneficiario.query('fechaDesactivo').value('.', 'DATE'),
			archivoXml.Beneficiario.query('email').value('.', 'NVARCHAR(40)'),
			archivoXml.Beneficiario.query('telefono1').value('.', 'NVARCHAR(40)')
		FROM (SELECT CAST(MY_XML AS xml)
			FROM OPENROWSET(BULK 'C:\XML\Beneficiario.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/Beneficiario') AS archivoXml (Beneficiario);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para cargar datos de un archivo XML a la tabla de EstadoCuenta>
-- =============================================
CREATE PROCEDURE banco_dbo_insertarEstadoCuentaXml
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO dbo.EstadoCuenta
		SELECT
			(SELECT TOP 1 CA.ID FROM dbo.CuentaAhorro CA WHERE CA.NumeroCuenta = archivoXml.EstadoCuenta.query('numCuenta').value('.', 'NVARCHAR(100)')),
			archivoXml.EstadoCuenta.query('fechaInicio').value('.', 'DATE'),
			archivoXml.EstadoCuenta.query('fechaFinal').value('.', 'DATE'),
			archivoXml.EstadoCuenta.query('intereses').value('.', 'INT'),
			archivoXml.EstadoCuenta.query('saldoInicial').value('.', 'MONEY'),
			archivoXml.EstadoCuenta.query('saldoFinal').value('.', 'MONEY'),
			0,
			0
		FROM (SELECT CAST(MY_XML AS xml)
			FROM OPENROWSET(BULK 'C:\XML\EstadoCuenta.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
			CROSS APPLY MY_XML.nodes('SistemaBanc/EstadoCuenta') AS archivoXml (EstadoCuenta);
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para vaciar las tablas>
-- =============================================
CREATE PROCEDURE banco_dbo_limpiarTablas
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		ALTER TABLE [dbo].[Cliente]  NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[TipoCuentaAhorro] NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[TipoDocumentoId]  NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[TipoParentesco] NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[Moneda]  NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[CuentaAhorro] NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[EstadoCuenta] NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[Beneficiario] NOCHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[CuentaObjeto] NOCHECK CONSTRAINT ALL
		--Se limpian las tablas
		DELETE [dbo].[Cliente]
		SELECT * FROM [dbo].[Cliente] AS T

		DELETE [dbo].[TipoCuentaAhorro]
		SELECT * FROM [dbo].[TipoCuentaAhorro] AS T

		DELETE [dbo].[TipoDocumentoId]
		SELECT * FROM [dbo].[TipoDocumentoId] AS T

		DELETE [dbo].[TipoParentesco]
		SELECT * FROM [dbo].[TipoParentesco] AS T

		DELETE [dbo].[Moneda]
		SELECT * FROM [dbo].[Moneda] AS T

		DELETE [dbo].[TipoMovimiento]
		SELECT * FROM [dbo].[TipoMovimiento] AS T

		DELETE [dbo].[CuentaAhorro]
		SELECT * FROM [dbo].[CuentaAhorro] AS T

		DELETE [dbo].[EstadoCuenta]
		SELECT * FROM [dbo].[EstadoCuenta] AS T

		DELETE [dbo].[Beneficiario]
		SELECT * FROM [dbo].[Beneficiario] AS T

		DELETE [dbo].[CuentaObjeto]
		SELECT * FROM [dbo].[CuentaObjeto] AS T

		--Se reactivan las FK
		ALTER TABLE [dbo].[Cliente]  CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[TipoCuentaAhorro] CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[TipoDocumentoId]  CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[TipoParentesco] CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[Moneda]  CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[CuentaAhorro] CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[EstadoCuenta] CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[Beneficiario] CHECK CONSTRAINT ALL
		ALTER TABLE [dbo].[CuentaObjeto] CHECK CONSTRAINT ALL

		--Se reinician los identitiy's
		DBCC CHECKIDENT ('[Cliente]', RESEED, 1);

		DBCC CHECKIDENT ('[TipoCuentaAhorro]', RESEED, 1);

		DBCC CHECKIDENT ('[TipoDocumentoId]', RESEED, 1);

		DBCC CHECKIDENT ('[Moneda]', RESEED, 1);

		DBCC CHECKIDENT ('[TipoMovimiento]', RESEED, 1);

		DBCC CHECKIDENT ('[CuentaAhorro]', RESEED, 1);

		DBCC CHECKIDENT ('[TipoParentesco]', RESEED, 1);

		DBCC CHECKIDENT ('[EstadoCuenta]', RESEED, 1);

		DBCC CHECKIDENT ('[Beneficiario]', RESEED, 1);

		DBCC CHECKIDENT ('[CuentaObjeto]', RESEED, 1);
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END
GO

-- =============================================
-- Author:		<Marcos Mendez>
-- Create date: <09/09/2019>
-- Description:	<Procedimiento para ejecutar todos los SP de carga de datos de los archivos XML>
-- =============================================
CREATE PROCEDURE banco_dbo_ejecutarInserciones
AS
BEGIN
	SET NOCOUNT ON;
		EXEC dbo.banco_dbo_limpiarTablas;
		EXEC dbo.banco_dbo_insertarMonedaXml;
		EXEC dbo.banco_dbo_insertarTipoDocumentoIdXml;
		EXEC dbo.banco_dbo_insertarTipoCuentaAhorroXml;
		EXEC dbo.banco_dbo_insertarTipoParentescoXml;
		EXEC dbo.banco_dbo_insertarClienteXml;
		EXEC dbo.banco_dbo_insertarCuentaAhorroXml;
		EXEC dbo.banco_dbo_insertarCuentaObjetoXml;
		EXEC dbo.banco_dbo_insertarBeneficiarioXml;
		EXEC dbo.banco_dbo_insertarEstadoCuentaXml;
		RETURN 1;
END
GO
