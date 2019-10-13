/* Script: database fill and simulation
 * author: Andres Cornejo
 */

 use Banco
 go

 drop proc if exists spFill
 go

 create proc spFill as
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

select * from Moneda
end

go