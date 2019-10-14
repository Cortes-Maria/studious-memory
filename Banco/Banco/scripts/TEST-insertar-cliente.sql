use Banco 

use Banco
declare @fechaInput date
set @fechaInput = convert(date,'1.1.2018',103)

set nocount on 
	declare @hdoc int
	declare @FechaOperacionXML xml
	select @FechaOperacionXML = X
	from openrowset(bulk 'C:\XML\Simulacion.xml', single_blob) as FechaOperacion(X)
	exec sp_xml_preparedocument @hdoc out,@FechaOperacionXML

	declare @varCliente table (fechaNac date, uname nvarchar(100), pw nvarchar(100), tDocID nvarchar(50), docID nvarchar(100), email nvarchar(100), tel1 nvarchar(100), tel2 nvarchar(100), nombre nvarchar(100))

	insert into @varCliente (fechaNac, uname, pw, tDocID, docID, email, tel1, tel2, nombre)
	select
		my_xml.tmpClient.query('fechaNacimiento').value('.', 'date'),
		my_xml.tmpClient.query('usuario').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('contrasenia').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('tipoDocId').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('docId').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('email').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('telefono1').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('telefono2').value('.', 'nvarchar(100)'),
		my_xml.tmpClient.query('nombre').value('.', 'nvarchar(100)')

from (select cast(my_xml as xml)
      from openrowset(bulk 'C:\XML\Simulacion.xml', single_blob) as T(my_xml)) as T(my_xml)
      cross apply my_xml.nodes('xml/Simulacion/FechaOperacion/Cliente') AS my_xml (tmpClient);
	  select * from @varCliente

	--from openxml(@hdoc,'xml/Simulacion/FechaOperacion/Cliente')
	--with(
	--	fechaNac date '@fechaNacimiento',
	--	uname nvarchar(100),
	--	pw nvarchar(100),
	--	tDocID nvarchar(100),
	--	docID nvarchar(100),
	--	email nvarchar(100),
	--	tel1 nvarchar(100),
	--	tel2 nvarchar(100),
	--	nombre nvarchar(100),
	--	fecha date '../@Fecha'
	--) --where @fechaInput = convert(date, Fecha, 103)
	--select * from @varCliente