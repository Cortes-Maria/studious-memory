/* Stored Procedure: Starts a simulation based on an XML file.
 * author: Andres Cornejo
 */

use [Banco]
go

drop proc if exists spSimulation
go

create proc spSimulation as
begin 
	begin try
		set nocount on
		declare @varCliente table (fechaNac date, uname nvarchar(100), pw nvarchar(100), tDocID nvarchar(50), docID nvarchar(100), email nvarchar(100), tel1 nvarchar(100), tel2 nvarchar(100))
		declare @varCuenta table (numCuenta nvarchar(100), saldo money, cliente nvarchar(100), tipoCuenta nvarchar(50), fechaCreac date)
		declare @varBenefNuevo table (nombre nvarchar(100), parentesco nvarchar(100), perc int, activo bit, fechaDesactivo date, tDocID nvarchar(50), docID nvarchar(100), email nvarchar(100), tel1 nvarchar(100), tel2 nvarchar(100), numCuenta nvarchar(100))
		declare @varBenefExistente table (parentesco nvarchar(1), perc int, active bit, fechaDesactivo date, docID nvarchar(100), numCuenta nvarchar(100))
		declare @varMovimiento table (numCuenta nvarchar(100), tipoMov nvarchar(50), fecha date, monto money)
		declare @varDates table (transactDate date)

		--Declare dates needed for the while loop
		declare @firstDate date, @lastDate date;
		--Fetch all dates from the xml
		declare @FechaOperacionXML xml;
		select @FechaOperacionXML= X
		from openrowset(bulk 'C:\XML\Simulacion.xml', single_blob) as FechaOperacion(X)

		declare @hdoc int;

		exec sp_xml_preparedocument @hdoc out, @FechaOperacionXML;

		insert @varDates
		select convert(date,fecha,103)
			from openxml(@hdoc,'xml/Simulacion/FechaOperacion')
		with(fecha date)
		
		--Set the first and the last date
		set @firstDate = (select min(transactDate) as minDate
		from @varDates)

		set @lastDate = (select max(transactDate) as minDate
		from @varDates)

		PRINT 'initdate ' + CAST(@firstDate AS VARCHAR)
		PRINT 'lastdate ' + CAST(@lastDate AS VARCHAR)

		while(@firstDate<=@lastDate)
			begin
				print('Fecha: '+convert(varchar(50),@firstDate))
				exec spAgregarCliente @fechaOperacionParam = @firstDate

				set @firstDate = dateadd(day,1,@firstDate)
			end
		--exec sp_xml_removedocument @hDoc
	end try
	begin catch
			declare @errorMsg nvarchar(1000) = (select ERROR_MESSAGE())
			print(@errorMsg)
			return -1*@@ERROR
	end catch
end
