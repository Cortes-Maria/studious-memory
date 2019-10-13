/* Script: Resets all the content from the database
 * author: Andres Cornejo
 */

use [Banco]
go

alter table [dbo].[Beneficiario]
	drop constraint [FK_Beneficiario_CuentaAhorro]
go
alter table [dbo].[Beneficiario]  
	drop constraint [FK_Beneficiario_TipoDocumentoId]
go
alter table [dbo].[Beneficiario]
	drop constraint [FK_Beneficiario_TipoParentesco1]
go
alter table [dbo].[Cliente]  
	drop constraint [FK_Cliente_TipoDocumentoId]
go
alter table [dbo].[CuentaAhorro]  
	drop constraint [FK_CuentaAhorro_Cliente]
go
alter table [dbo].[CuentaAhorro]  
	drop constraint [FK_CuentaAhorro_TipoCuentaAhorro1] 
go
alter table [dbo].[CuentaObjeto]  
	drop constraint [FK_CuentaObjeto_CuentaAhorro]
go
alter table [dbo].[EstadoCuenta]  
	drop constraint [FK_EstadoCuenta_CuentaAhorro]
go
alter table [dbo].[Movimiento]  
	drop constraint [FK_Movimiento_CuentaAhorro]
go
alter table [dbo].[Movimiento]  
	drop constraint [FK_Movimiento_EstadoCuenta] 
go
alter table [dbo].[Movimiento]  
	drop constraint [FK_Movimiento_TipoMovimiento]
go
alter table [dbo].[TipoCuentaAhorro]  
	drop constraint [FK_TipoCuentaAhorro_Moneda]
go

--In contrast with 'delete', 'truncate' resets the id autoincrement. Both delete the content of the tables.
truncate table [dbo].Beneficiario;
truncate table [dbo].Cliente;
truncate table [dbo].CuentaAhorro;
truncate table [dbo].CuentaObjeto;
truncate table [dbo].EstadoCuenta;
truncate table [dbo].Moneda;
truncate table [dbo].Movimiento;
truncate table [dbo].TipoCuentaAhorro;
truncate table [dbo].TipoDocumentoId;
truncate table [dbo].TipoMovimiento;
truncate table [dbo].TipoParentesco;
go

alter table [dbo].[Beneficiario]  with check add  constraint [FK_Beneficiario_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
references [dbo].[CuentaAhorro] ([ID])
go
alter table [dbo].[Beneficiario] check constraint [FK_Beneficiario_CuentaAhorro]
go
alter table [dbo].[Beneficiario]  with check add  constraint [FK_Beneficiario_TipoDocumentoId] FOREIGN KEY([IdTipoDocumentoId])
references [dbo].[TipoDocumentoId] ([ID])
go
alter table [dbo].[Beneficiario] check constraint [FK_Beneficiario_TipoDocumentoId]
go
alter table [dbo].[Beneficiario]  with check add  constraint [FK_Beneficiario_TipoParentesco1] FOREIGN KEY([IdTipoParentesco])
references [dbo].[TipoParentesco] ([ID])
go
alter table [dbo].[Beneficiario] check constraint [FK_Beneficiario_TipoParentesco1]
go
alter table [dbo].[Cliente]  with check add  constraint [FK_Cliente_TipoDocumentoId] FOREIGN KEY([IdTipoDocumentoId])
references [dbo].[TipoDocumentoId] ([ID])
go
alter table [dbo].[Cliente] check constraint [FK_Cliente_TipoDocumentoId]
go
alter table [dbo].[CuentaAhorro]  with check add  constraint [FK_CuentaAhorro_Cliente] FOREIGN KEY([IdCliente])
references [dbo].[Cliente] ([ID])
go
alter table [dbo].[CuentaAhorro] check constraint [FK_CuentaAhorro_Cliente]
go
alter table [dbo].[CuentaAhorro]  with check add  constraint [FK_CuentaAhorro_TipoCuentaAhorro1] FOREIGN KEY([IdTipoCuentaAhorro])
references [dbo].[TipoCuentaAhorro] ([ID])
go
alter table [dbo].[CuentaAhorro] check constraint [FK_CuentaAhorro_TipoCuentaAhorro1]
go
alter table [dbo].[CuentaObjeto]  with check add  constraint [FK_CuentaObjeto_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
references [dbo].[CuentaAhorro] ([ID])
go
alter table [dbo].[CuentaObjeto] check constraint [FK_CuentaObjeto_CuentaAhorro]
go
alter table [dbo].[EstadoCuenta]  with check add  constraint [FK_EstadoCuenta_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
references [dbo].[CuentaAhorro] ([ID])
go
alter table [dbo].[EstadoCuenta] check constraint [FK_EstadoCuenta_CuentaAhorro]
go
alter table [dbo].[Movimiento]  with check add  constraint [FK_Movimiento_CuentaAhorro] FOREIGN KEY([IdCuentaAhorro])
references [dbo].[CuentaAhorro] ([ID])
go
alter table [dbo].[Movimiento] check constraint [FK_Movimiento_CuentaAhorro]
go
alter table [dbo].[Movimiento]  with check add  constraint [FK_Movimiento_EstadoCuenta] FOREIGN KEY([IdEstadoCuenta])
references [dbo].[EstadoCuenta] ([ID])
go
alter table [dbo].[Movimiento] check constraint [FK_Movimiento_EstadoCuenta]
go
alter table [dbo].[Movimiento]  with check add  constraint [FK_Movimiento_TipoMovimiento] FOREIGN KEY([IdTipoMovimiento])
references [dbo].[TipoMovimiento] ([ID])
go
alter table [dbo].[Movimiento] check constraint [FK_Movimiento_TipoMovimiento]
go
alter table [dbo].[TipoCuentaAhorro]  with check add  constraint [FK_TipoCuentaAhorro_Moneda] FOREIGN KEY([IdMoneda])
references [dbo].[Moneda] ([ID])
go
alter table [dbo].[TipoCuentaAhorro] check constraint [FK_TipoCuentaAhorro_Moneda]
go