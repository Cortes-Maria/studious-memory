/* Stored Procedure: Inserts clients from an xml.
 * author: Andres Cornejo
 */

use [Banco]
go

drop proc if exists spAgregarCliente
go

create proc spAgregarCliente @fechaInput date as
begin
	begin try
		set nocount on 
		declare @hdoc int
		declare @FechaOperacionXML xml
		select @FechaOperacionXML = X
		from openrowset(bulk 'C:\XML\Simulacion.xml', single_blob) as FechaOperacion(X)
		exec sp_xml_preparedocument @hdoc out,@FechaOperacionXML

		declare @varCliente table (fechaNac date, uname nvarchar(100), pw nvarchar(100), tDocID nvarchar(50), docID nvarchar(100), email nvarchar(100), tel1 nvarchar(100), tel2 nvarchar(100), nombre nvarchar(100))

		insert into @varCliente (fechaNac, uname, pw, tDocID, docID, email, tel1, tel2, nombre)
		select fechaNac, uname, pw, tDocID, docID, email, tel1, tel2, nombre
		from openxml(@hdoc,'xml/Simulacion/FechaOperacion/Cliente')
		with(
			fechaNac date '@fechaNacimiento',
			uname nvarchar(100),
			pw nvarchar(100),
			tDocID nvarchar(100),
			docID nvarchar(100),
			email nvarchar(100),
			tel1 nvarchar(100),
			tel2 nvarchar(100),
			nombre nvarchar(100),
			fecha date '../@Fecha'
		) where @fechaInput = convert(date, Fecha, 103)
		select * from @varCliente
	end try

	begin catch
	end catch
end

use Banco
declare @tdate date
set @tdate = convert(date,'1.1.2018',103)
exec spAgregarCliente @tdate