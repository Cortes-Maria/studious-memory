USE [master]
GO
/****** Object:  Database [Banco]    Script Date: 10/13/2019 15:06:15 ******/
CREATE DATABASE [Banco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Banco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Banco.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Banco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Banco_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Banco] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Banco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Banco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Banco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Banco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Banco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Banco] SET ARITHABORT OFF 
GO
ALTER DATABASE [Banco] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Banco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Banco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Banco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Banco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Banco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Banco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Banco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Banco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Banco] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Banco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Banco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Banco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Banco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Banco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Banco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Banco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Banco] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Banco] SET  MULTI_USER 
GO
ALTER DATABASE [Banco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Banco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Banco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Banco] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Banco] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Banco] SET QUERY_STORE = OFF
GO
USE [Banco]
GO
/****** Object:  Table [dbo].[Beneficiario]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumentoId] [int] NOT NULL,
	[IdTipoParentesco] [int] NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[DocumentoId] [nvarchar](20) NOT NULL,
	[Nombre] [nvarchar](40) NOT NULL,
	[Porcentaje] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[FechaDesactivo] [date] NOT NULL,
	[Email] [nvarchar](40) NOT NULL,
	[Tel1] [nvarchar](40) NOT NULL,
	[Tel2] [nvarchar](40) NOT NULL,
	[NumeroCuenta] [int] NOT NULL,
 CONSTRAINT [PK_Beneficiario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumentoId] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[DocumentoId] [nvarchar](100) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Tel1] [nvarchar](100) NOT NULL,
	[Tel2] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuentaAhorro]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentaAhorro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoCuentaAhorro] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[NumeroCuenta] [nvarchar](100) NOT NULL,
	[Saldo] [money] NOT NULL,
	[fechaCreacion] [date] NOT NULL,
 CONSTRAINT [PK_CuentaAhorro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuentaObjeto]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoCuenta]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCuenta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Intereses] [int] NOT NULL,
	[SaldoInicial] [money] NOT NULL,
	[SaldoFinal] [money] NOT NULL,
	[QRCH] [int] NOT NULL,
	[QRCA] [int] NOT NULL,
	[QDepositos] [int] NOT NULL,
 CONSTRAINT [PK_EstadoCuenta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Movimiento]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimiento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAhorro] [int] NOT NULL,
	[IdEstadoCuenta] [int] NOT NULL,
	[IdTipoMovimiento] [int] NOT NULL,
	[NumeroCuenta] [varchar](100) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [money] NOT NULL,
	[nuevoSaldo] [money] NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Movimiento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCuentaAhorro]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[QRCH] [int] NOT NULL,
 CONSTRAINT [PK_TipoCuentaAhorro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumentoId]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoMovimiento]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMovimiento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[tipoDC] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_TipoMovimiento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoParentesco]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
ALTER TABLE [dbo].[EstadoCuenta] ADD  CONSTRAINT [DF__EstadoCuen__QRCH__5441852A]  DEFAULT ((0)) FOR [QRCH]
GO
ALTER TABLE [dbo].[EstadoCuenta] ADD  CONSTRAINT [DF__EstadoCuen__QRCA__5535A963]  DEFAULT ((0)) FOR [QRCA]
GO
ALTER TABLE [dbo].[TipoCuentaAhorro] ADD  CONSTRAINT [DF__TipoCuent__Retir__4CA06362]  DEFAULT ((0)) FOR [Retiros]
GO
ALTER TABLE [dbo].[Beneficiario]  WITH CHECK ADD  CONSTRAINT [FK_Beneficiario_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
REFERENCES [dbo].[CuentaAhorro] ([ID])
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
ALTER TABLE [dbo].[TipoCuentaAhorro]  WITH CHECK ADD  CONSTRAINT [FK_TipoCuentaAhorro_Moneda] FOREIGN KEY([IdMoneda])
REFERENCES [dbo].[Moneda] ([ID])
GO
ALTER TABLE [dbo].[TipoCuentaAhorro] CHECK CONSTRAINT [FK_TipoCuentaAhorro_Moneda]
GO
/****** Object:  StoredProcedure [dbo].[spFill]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[spFill] as
 begin

--Declaration of variable tables
declare @varParentesco table (nombre nvarchar(10),detalle nvarchar(100))
--declare @varCliente table (nombre nvarchar(100),)

--Insert the most basic (concrete) tables
insert into dbo.Moneda (Nombre, Simbolo)
select
	MY_XML.Moneda.query('nombre').value('.', 'NVARCHAR(50)'),
	MY_XML.Moneda.query('simbolo').value('.', 'NVARCHAR(1)')
from (select cast(MY_XML as xml)
      from openrowset(bulk 'C:\XML\Moneda.xml', single_blob) as T(MY_XML)) as T(MY_XML)
      cross apply MY_XML.nodes('SistemaBanc/Moneda') AS MY_XML (Moneda);

-- select * from Moneda
end

GO
/****** Object:  StoredProcedure [dbo].[spLinkTables]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[spLinkTables] as

	alter table [dbo].[Beneficiario]  with check add  constraint [FK_Beneficiario_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
	references [dbo].[CuentaAhorro] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[spResetDB]    Script Date: 10/13/2019 15:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[spResetDB] as
GO
USE [master]
GO
ALTER DATABASE [Banco] SET  READ_WRITE 
GO
