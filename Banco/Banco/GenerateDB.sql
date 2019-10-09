USE [master]
GO

IF DB_ID('Banco') IS NOT NULL 
BEGIN
	DECLARE @kill varchar(8000) = '';  --proceso para eliminar las conexiones de la bd
	SELECT @kill = @kill + 'kill ' + CONVERT(nvarchar(5), session_id) + ';'  
	FROM sys.dm_exec_sessions
	WHERE database_id  = db_id('Banco')
	EXEC(@kill);
    DROP DATABASE BANCO
END

CREATE DATABASE [Banco] --Se crea la nueva bd
GO

USE Banco
GO
--Se crean las tablas
CREATE TABLE [dbo].[Beneficiario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumentoId] [int] NOT NULL,
	[IdTipoParentesco] [int] NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[DocumentoId] [nvarchar](20) NOT NULL,
	[Nombre] [nvarchar](40) NOT NULL,
	[Porcentaje] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaNacimiento] [date] NULL,
	[FechaDesactivo] [date] NULL,
	[Email] [nvarchar](40) NOT NULL,
	[Telefono] [nvarchar](40) NOT NULL,
	CONSTRAINT [PK_Beneficiario] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

CREATE TABLE [dbo].[Cliente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumentoId] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[DocumentoId] [nvarchar](100) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CuentaAhorro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoCuentaAhorro] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[NumeroCuenta] [nvarchar](100) NOT NULL,
	[Saldo] [money] NOT NULL,
 CONSTRAINT [PK_CuentaAhorro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CuentaObjeto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[FechaInicial] [date] NOT NULL,
	[FechaFinal] [date] NOT NULL,
	[Saldo] [money] NOT NULL,
	[MontoAhorro] [money] NOT NULL,
 CONSTRAINT [PK_CuentaObjeto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EstadoCuenta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Intereses] [int] NOT NULL,
	[SaldoInicial] [money] NOT NULL,
	[SaldoFinal] [money] NOT NULL,
	[QRCH] [int] NULL,
	[QRCA] [int] NULL,
 CONSTRAINT [PK_EstadoCuenta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Moneda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Simbolo] [char](1) NOT NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Movimiento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[IdEstadoCuenta] [int] NOT NULL,
	[IdTipoMovimiento] [int] NOT NULL,
	[NumeroCuenta] [varchar](100) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [money] NOT NULL,
 CONSTRAINT [PK_Movimiento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TipoCuentaAhorro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdMoneda] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[TasaInteresesAnual] [float] NOT NULL,
	[Retiros] [int] NOT NULL,
	[SaldoMinimo] [money] NOT NULL,
	[MultaRetirosCajero] [money] NOT NULL,
	[MultaSaldoMinimo] [money] NOT NULL,
	[MontoMensual] [money] NOT NULL,
 CONSTRAINT [PK_TipoCuentaAhorro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TipoDocumentoId](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_TipoDocumentoId] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TipoParentesco](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [char](1) NOT NULL,
	[Detalle] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TipoParentesco] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO	

CREATE TABLE [dbo].[TipoMovimiento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TipoMovimiento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--Se crean las llaves foraneas y constraints
ALTER TABLE [dbo].[Beneficiario]  WITH CHECK ADD  CONSTRAINT [FK_Beneficiario_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
REFERENCES [dbo].[CuentaAhorro] ([ID])
GO

ALTER TABLE [dbo].[TipoCuentaAhorro] ADD  DEFAULT ((0)) FOR [Retiros]
GO

ALTER TABLE [dbo].[Beneficiario] CHECK CONSTRAINT [FK_Beneficiario_CuentaAhorro]
GO

ALTER TABLE [dbo].[Beneficiario]  WITH CHECK ADD  CONSTRAINT [FK_Beneficiario_TipoDocumentoId] FOREIGN KEY([IdTipoDocumentoId])
REFERENCES [dbo].[TipoDocumentoId] ([ID])
GO

ALTER TABLE [dbo].[Beneficiario] CHECK CONSTRAINT [FK_Beneficiario_TipoDocumentoId]
GO

ALTER TABLE [dbo].[Beneficiario]  WITH CHECK ADD  CONSTRAINT [FK_Beneficiario_TipoParentesco1] FOREIGN KEY([IdTipoParentesco])
REFERENCES [dbo].[TipoParentesco] ([ID])
GO

ALTER TABLE [dbo].[Beneficiario] CHECK CONSTRAINT [FK_Beneficiario_TipoParentesco1]
GO

ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TipoDocumentoId] FOREIGN KEY([IdTipoDocumentoId])
REFERENCES [dbo].[TipoDocumentoId] ([ID])
GO

ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TipoDocumentoId]
GO

ALTER TABLE [dbo].[CuentaAhorro]  WITH CHECK ADD  CONSTRAINT [FK_CuentaAhorro_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([ID])
GO

ALTER TABLE [dbo].[CuentaAhorro] CHECK CONSTRAINT [FK_CuentaAhorro_Cliente]
GO

ALTER TABLE [dbo].[TipoCuentaAhorro]  WITH CHECK ADD  CONSTRAINT [FK_TipoCuentaAhorro_Moneda] FOREIGN KEY([IdMoneda])
REFERENCES [dbo].[Moneda] ([ID])
GO

ALTER TABLE [dbo].[TipoCuentaAhorro] CHECK CONSTRAINT [FK_TipoCuentaAhorro_Moneda]
GO

ALTER TABLE [dbo].[CuentaAhorro]  WITH CHECK ADD  CONSTRAINT [FK_CuentaAhorro_TipoCuentaAhorro1] FOREIGN KEY([IdTipoCuentaAhorro])
REFERENCES [dbo].[TipoCuentaAhorro] ([ID])
GO

ALTER TABLE [dbo].[CuentaAhorro] CHECK CONSTRAINT [FK_CuentaAhorro_TipoCuentaAhorro1]
GO

ALTER TABLE [dbo].[CuentaObjeto]  WITH CHECK ADD  CONSTRAINT [FK_CuentaObjeto_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
REFERENCES [dbo].[CuentaAhorro] ([ID])
GO

ALTER TABLE [dbo].[CuentaObjeto] CHECK CONSTRAINT [FK_CuentaObjeto_CuentaAhorro]
GO

ALTER TABLE [dbo].[EstadoCuenta]  WITH CHECK ADD  CONSTRAINT [FK_EstadoCuenta_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
REFERENCES [dbo].[CuentaAhorro] ([ID])
GO

ALTER TABLE [dbo].[EstadoCuenta] CHECK CONSTRAINT [FK_EstadoCuenta_CuentaAhorro]
GO

ALTER TABLE [dbo].[EstadoCuenta] ADD  DEFAULT ((0)) FOR [QRCH]
GO

ALTER TABLE [dbo].[EstadoCuenta] ADD  DEFAULT ((0)) FOR [QRCA]
GO

ALTER TABLE [dbo].[Movimiento]  WITH CHECK ADD  CONSTRAINT [FK_Movimiento_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
REFERENCES [dbo].[CuentaAhorro] ([ID])
GO

ALTER TABLE [dbo].[Movimiento] CHECK CONSTRAINT [FK_Movimiento_CuentaAhorro]
GO

ALTER TABLE [dbo].[Movimiento]  WITH CHECK ADD  CONSTRAINT [FK_Movimiento_EstadoCuenta] FOREIGN KEY([IdEstadoCuenta])
REFERENCES [dbo].[EstadoCuenta] ([ID])
GO

ALTER TABLE [dbo].[Movimiento] CHECK CONSTRAINT [FK_Movimiento_EstadoCuenta]
GO

ALTER TABLE [dbo].[Movimiento]  WITH CHECK ADD  CONSTRAINT [FK_Movimiento_TipoMovimiento] FOREIGN KEY([IdTipoMovimiento])
REFERENCES [dbo].[TipoMovimiento] ([ID])
GO

ALTER TABLE [dbo].[Movimiento] CHECK CONSTRAINT [FK_Movimiento_TipoMovimiento]
GO

USE [master]
GO
ALTER DATABASE [Banco] SET  READ_WRITE 
GO


