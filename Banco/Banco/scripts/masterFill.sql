/* Script: Resets all the content from the database
 * author: Andres Cornejo
 */

use [Banco]

set nocount on

--Declaration of variable tables
declare @varTipoCuentaAhorro table (nombre nvarchar(100), saldoMin money, multaSaldoMin money, servicioMensual money, retiros int, simMoneda nvarchar(1), qrch int, multaCajeroHumano money, tasaInteres int)

--Insert the most basic (concrete) tables
insert into dbo.Moneda (Nombre, Simbolo)
select
	my_xml.Moneda.query('nombre').value('.', 'nvarchar(50)'),
	my_xml.Moneda.query('simbolo').value('.', 'nvarchar(1)')
from (select cast(my_xml as xml)
      from openrowset(bulk 'C:\XML\Moneda.xml', single_blob) as T(my_xml)) as T(my_xml)
      cross apply my_xml.nodes('SistemaBanc/Moneda') AS my_xml (Moneda);

--select * from Moneda

insert into dbo.TipoParentesco (Nombre,Detalle)
select
	my_xml.TipoParentesco.query('nombre').value('.', 'nvarchar(1)'),
	my_xml.TipoParentesco.query('detalle').value('.', 'nvarchar(100)')
from (select cast(my_xml as xml)
      from openrowset(bulk 'C:\XML\Parentesco.xml', single_blob) as T(my_xml)) as T(my_xml)
      cross apply my_xml.nodes('SistemaBanc/Parentesco') AS my_xml (TipoParentesco);

--select * from TipoParentesco

insert into dbo.TipoDocumentoId (Nombre)
select
		my_xml.TipoDocumentoId.query('nombre').value('.', 'nvarchar(100)')
from (select cast(my_xml as xml)
      from openrowset(bulk 'C:\XML\TipoID.xml', single_blob) as T(my_xml)) as T(my_xml)
      cross apply my_xml.nodes('SistemaBanc/TipoID') AS my_xml (TipoDocumentoId);

--select * from TipoDocumentoId

insert into dbo.TipoMovimiento (Nombre, tipoDC)
select
		my_xml.TipoMoviemiento.query('nombre').value('.', 'nvarchar(100)'),
		my_xml.TipoMoviemiento.query('tipoDC').value('.', 'nvarchar(100)')
from (select cast(my_xml as xml)
      from openrowset(bulk 'C:\XML\TipoMovimiento.xml', single_blob) as T(my_xml)) as T(my_xml)
      cross apply my_xml.nodes('SistemaBanc/TipoMov') AS my_xml (TipoMoviemiento);

--select * from TipoMovimiento

insert into @varTipoCuentaAhorro (nombre, saldoMin, multaSaldoMin, servicioMensual, retiros, simMoneda, qrch, multaCajeroHumano, tasaInteres)
select
	my_xml.varTipoCuentaAhorro.query('nombre').value('.', 'nvarchar(100)'),
	my_xml.varTipoCuentaAhorro.query('saldoMinimo').value('.', 'money'),
	my_xml.varTipoCuentaAhorro.query('multaSaldoMinimo').value('.', 'money'),
	my_xml.varTipoCuentaAhorro.query('cargosPorServicioMensual').value('.', 'money'),
	my_xml.varTipoCuentaAhorro.query('retiros').value('.', 'int'),
	my_xml.varTipoCuentaAhorro.query('simMoneda').value('.', 'nvarchar(1)'),
	my_xml.varTipoCuentaAhorro.query('maxRetirosCajeroHumano').value('.', 'int'),
	my_xml.varTipoCuentaAhorro.query('multaIncumpleMaxRetirosCajeroHumano').value('.', 'money'),
	my_xml.varTipoCuentaAhorro.query('tasaIntereses').value('.', 'int')
from (select cast(my_xml as xml)
      from openrowset(bulk 'C:\XML\TipoCuentaAhorro.xml', single_blob) as T(my_xml)) as T(my_xml)
      cross apply my_xml.nodes('SistemaBanc/TipoCuentaAhorro') AS my_xml (varTipoCuentaAhorro);

--QRCH: Cantidad de retiros de cajero humano
insert into dbo.TipoCuentaAhorro (Nombre, SaldoMinimo, MultaSaldoMinimo, MontoMensual, Retiros, QRCH, MultaRetirosCajero, TasaInteresesAnual, IdMoneda)
select vTCA.nombre, vTCA.saldoMin, vTCA.multaSaldoMin, vTCA.servicioMensual, vTCA.retiros, vTCA.qrch, vTCA.multaCajeroHumano, vTCA.tasaInteres,
		mon.ID
from @varTipoCuentaAhorro vTCA, Moneda mon
where vTCA.simMoneda = mon.Simbolo

--select * from TipoCuentaAhorro