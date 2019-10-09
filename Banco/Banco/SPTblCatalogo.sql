USE [Banco]
GO

CREATE PROCEDURE banco_dbo_agregarTablasCatalogo
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DROP TABLE IF EXISTS [dbo].[MonedaC]


		DROP TABLE IF EXISTS [dbo].[TipoCuentaAhorroC]


		DROP TABLE IF EXISTS [dbo].[TipoDocumentoIdC]

		CREATE TABLE [dbo].[MonedaC](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[Nombre] [nvarchar](100) NOT NULL,
			[Simbolo] [char](1) NOT NULL,
		CONSTRAINT [PK_MonedaC] PRIMARY KEY CLUSTERED 
		([ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]


		CREATE TABLE [dbo].[TipoCuentaAhorroC](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[Nombre] [nvarchar](100) NOT NULL,
			[TasaInteresesAnual] [float] NOT NULL,
			[Retiros] [int] NOT NULL,
			[SaldoMinimo] [money] NOT NULL,
			[MultaRetirosCajero] [money] NOT NULL,
			[MultaSaldoMinimo] [money] NOT NULL,
			[MontoMensual] [money] NOT NULL,
		 CONSTRAINT [PK_TipoCuentaAhorroC] PRIMARY KEY CLUSTERED 
		([ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]


		ALTER TABLE [dbo].[TipoCuentaAhorroC] ADD  DEFAULT ((0)) FOR [Retiros]


		CREATE TABLE [dbo].[TipoDocumentoIdC](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[Nombre] [nvarchar](40) NOT NULL,
		CONSTRAINT [PK_TipoDocumentoIdC] PRIMARY KEY CLUSTERED 
		([ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]

		--Se reinician los identitiy's
		DBCC CHECKIDENT ('[TipoCuentaAhorroC]', RESEED, 0);


		DBCC CHECKIDENT ('[MonedaC]', RESEED, 0);


		DBCC CHECKIDENT ('[TipoCuentaAhorroC]', RESEED, 0);


		--Inserciones
		INSERT INTO [dbo].[TipoDocumentoIdC] 
           ([Nombre])
     VALUES
           ('Cedula'),
		   ('Pasaporte'),
		   ('Licencia de conducir')


		INSERT INTO [dbo].[MonedaC]
           ([Nombre]
           ,[Simbolo])
     VALUES
           ('Dolar'
           ,'$'),
           ('Colon'
           ,'?'),
           ('Euro'
           ,'€')

		INSERT INTO [dbo].[TipoCuentaAhorroC]
           ([Nombre]
           ,[TasaInteresesAnual]
           ,[Retiros]
           ,[SaldoMinimo]
		   ,[MultaRetirosCajero]
		   ,[MultaSaldoMinimo]
           ,[MontoMensual])
     VALUES
           ('Pobre'
           ,1.12
           ,5
           ,10000
           ,8000
		   ,5000,
		   100000),
           ('Clase Media'
           ,2.26
           ,12
           ,15000
           ,10000
		   ,7500,
		   125000),
           ('Clase Semi Alta'
           ,3.14
           ,20
           ,30000
           ,14000
		   ,28000,
		   300000),
           ('Clase Alta'
           ,5.66
           ,40
           ,500000
           ,120000
		   ,390000,
		   1000000)
		   RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN @@ERROR * -1;
	END CATCH
END








