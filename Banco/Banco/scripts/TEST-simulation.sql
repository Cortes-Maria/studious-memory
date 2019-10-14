--test sim

set nocount on

declare @xmlDoc = '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xml>
   <Simulacion>
      <FechaOperacion fecha= "2018-01-01" >
         <Cliente>
            <fechaNacimiento>2000-06-10</fechaNacimiento>
            <usuario>aramos</usuario>
            <contrasenia>ar734</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123479582</docId>
            <email>a.ramos@gmail.com</email>
            <telefono1>24853790</telefono1>
			<telefono2>68203790</telefono2>
            <nombre>Adrian Ramos Gamboa</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>2000-05-13</fechaNacimiento>
            <usuario>equiros</usuario>
            <contrasenia>eq123</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>177850267</docId>
            <email>e.quiros@gmail.com</email>
            <telefono1>84526710</telefono1>
			<telefono2>28203880</telefono2>
            <nombre>Esteban Leiva Rojas</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1987-02-20</fechaNacimiento>
            <usuario>esegura</usuario>
            <contrasenia>es456</contrasenia>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>127881269</docId>
            <email>e.segura@gmail.com</email>
            <telefono1>87550631</telefono1>
			<telefono2>22203790</telefono2>
            <nombre>Estela Segura Arias</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>7345619</numCuenta>
            <saldo>100000</saldo>
            <cliente>123479582</cliente>
            <tipoCuentaAhorro>Pobre</tipoCuentaAhorro>
            <fechaCreacion>2018-01-01</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>1254788</numCuenta>
            <saldo>321920</saldo>
            <cliente>177850267</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-01</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>1254745</numCuenta>
            <saldo>90152</saldo>
            <cliente>127881269</cliente>
            <tipoCuentaAhorro>Pobre</tipoCuentaAhorro>
            <fechaCreacion>2018-01-01</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Felipe Ramos Gamboa</nombre>
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>128759450</docId>
            <email>feli.gutierrez@gmail.com</email>
            <telefono1>88304655</telefono1>
			<telefono2>22893770</telefono2>
			<numCuenta>7345619</numCuenta>
            <fechaNacimiento>2001-05-10</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioNuevo>
            <nombre>Manuel Ramos Gonzales</nombre>
            <parentesco>P</parentesco>
            <porcentaje>50</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Pasaporte</tipoDocId>
            <docId>117820568</docId>
            <email>fmanu.alfa@gmail.com</email>
            <telefono1>84760290</telefono1>
			<telefono2>22025870</telefono2>
			<numCuenta>7345619</numCuenta>
            <fechaNacimiento>1960-12-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>C</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>177850267</docId> 
			<numCuenta>7345619</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marta Flores Acosta</nombre>
            <parentesco>C</parentesco>
            <porcentaje>50</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>172019853</docId>
            <email>marta.flores@gmail.com</email>
            <telefono1>60248930</telefono1>
			<telefono2>24893231</telefono2>
			<numCuenta>1254788</numCuenta>
            <fechaNacimiento>2000-08-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioNuevo>
            <nombre>Sophia Leiva Rojas</nombre>
            <parentesco>S</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123456951</docId>
            <email>soph.lei@gmail.com</email>
            <telefono1>84653079</telefono1>
			<telefono2>24875931</telefono2>
			<numCuenta>1254788</numCuenta>
            <fechaNacimiento>1998-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>123479582</docId> 
			<numCuenta>1254788</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Patricia Cruz Segura</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>185478547</docId>
            <email>patri.cruz@gmail.com</email>
            <telefono1>87541236</telefono1>
			<telefono2>24635989</telefono2>
			<numCuenta>1254745</numCuenta>
            <fechaNacimiento>1950-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>M</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>177850267</docId> 
			<numCuenta>1254745</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>7345619</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>7345619</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>-100000</monto> 
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>7345619</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1254788</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1254788</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1254788</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1254745</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1254745</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1254745</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-01</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-02" >
         <Cliente>
            <fechaNacimiento>1980-12-20</fechaNacimiento>
            <usuario>ybenavides</usuario>
            <contrasenia>yb789</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>135472067</docId>
            <email>y.benavides@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Yorleny Benavides Alfaro</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>2001-01-01</fechaNacimiento>
            <usuario>dgarcia</usuario>
            <contrasenia>dg147</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>204563700</docId>
            <email>d.garcia@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>David Garcia Ramirez</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1964-05-10</fechaNacimiento>
            <usuario>rramirez</usuario>
            <contrasenia>rr258</contrasenia>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>123753159</docId>
            <email>r.ramirez@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2>
            <nombre>Rodrigo Ramirez Mora</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>1712301</numCuenta>
            <saldo>2589630</saldo>
            <cliente>135472067</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-02</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>1245631</numCuenta>
            <saldo>380000</saldo>
            <cliente>204563700</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-02</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>5347631</numCuenta>
            <saldo>3589000</saldo>
            <cliente>123753159</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-02</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Jenny Aguero Segura</nombre>
            <parentesco>S</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>111112394</docId>
            <email>jen.ague@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>1245631</numCuenta>
            <fechaNacimiento>1998-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioNuevo>
            <nombre>Gladys Alfaro Correa</nombre>
            <parentesco>P</parentesco>
            <porcentaje>50</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Pasaporte</tipoDocId>
            <docId>113355875</docId>
            <email>glady.vera@gmail.com</email>
            <telefono1>60123212</telefono1>
			<telefono2>25460460</telefono2>
			<numCuenta>1245631</numCuenta>
            <fechaNacimiento>1984-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>C</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>204563700</docId> 
			<numCuenta>1245631</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Tamara Benavides Alfaro</nombre>
            <parentesco>C</parentesco>
            <porcentaje>50</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>11934500579</docId>
            <email>tsuki.ra@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>1712301</numCuenta>
            <fechaNacimiento>1984-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioNuevo>
            <nombre>Rodolfo Garcia Moreno</nombre>
            <parentesco>S</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Pasaporte</tipoDocId>
            <docId>158904631</docId>
            <email>rodolf.rojas@gmail.com</email>
            <telefono1>60123813</telefono1>
			<telefono2>25490703</telefono2>
			<numCuenta>1712301</numCuenta>
            <fechaNacimiento>1978-10-11</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>135472067</docId> 
			<numCuenta>1712301</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Vanessa Vargas Castro</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>158938105</docId>
            <email>vane.vargas@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>5347631</numCuenta>
            <fechaNacimiento>1978-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>135472067</docId> 
			<numCuenta>1712301</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>1245631</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1245631</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1245631</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1712301</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1712301</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1712301</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5347631</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5347631</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5347631</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-02</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-03" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>rsolano</usuario>
            <contrasenia>rrss</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>16389043</docId>
            <email>r.solano@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Ruperto Solano Ramirez</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>jsolano</usuario>
            <contrasenia>jjsm</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>22775599</docId>
            <email>j.meza@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Judith Solano Meza</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>isolano</usuario>
            <contrasenia>iss07</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>590781234</docId>
            <email>i.solano@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2>
            <nombre>Isabel Solano Solano</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>77336789</numCuenta>
            <saldo>258000</saldo>
            <cliente>16389043</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-03</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>567783</numCuenta>
            <saldo>380000</saldo>
            <cliente>22775599</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-03</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2343456</numCuenta>
            <saldo>3589000</saldo>
            <cliente>590781234</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-03</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Cesar Gamboa Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>677825346</docId>
            <email>cesc.gambo@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>77336789</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioNuevo>
            <nombre>Juan Gamboa Porras</nombre>
            <parentesco>C</parentesco>
            <porcentaje>50</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Pasaporte</tipoDocId>
            <docId>325682146</docId>
            <email>j.vacas@gmail.com</email>
            <telefono1>60123212</telefono1>
			<telefono2>25460460</telefono2>
			<numCuenta>77336789</numCuenta>
            <fechaNacimiento>1952-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>16389043</docId> 
			<numCuenta>77336789</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Ruth Solano Solano</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>119300579</docId>
            <email>ruth.sol@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>567783</numCuenta>
            <fechaNacimiento>1957-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>22775599</docId> 
			<numCuenta>567783</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Luz Vargas Castro</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>35667778</docId>
            <email>luni.vargas@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>2343456</numCuenta>
            <fechaNacimiento>1978-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>16389043</docId> 
			<numCuenta>2343456</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>77336789</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>77336789</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>77336789</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>77336789</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>567783</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>567783</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2343456</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2343456</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2343456</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-03</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-04" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>ayangams</usuario>
            <contrasenia>npys</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>43667872</docId>
            <email>a.gams@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Ana Yancy Gamboa Solano</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>rmeneses</usuario>
            <contrasenia>rrmene</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>3456678</docId>
            <email>r.men@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Rolando Meneses Ramirez</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>ccald</usuario>
            <contrasenia>divo</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>37878832</docId>
            <email>lc.cald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2>
            <nombre>Luis Carlos Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>34567878</numCuenta>
            <saldo>258000</saldo>
            <cliente>43667872</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-04</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>54678789</numCuenta>
            <saldo>380000</saldo>
            <cliente>3456678</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-04</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>3455667</numCuenta>
            <saldo>3589000</saldo>
            <cliente>37878832</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-04</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Iveth Gamboa Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>5667787</docId>
            <email>iv.gambo@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>34567878</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioNuevo>
            <nombre>Carlos Cerdas Barrantes</nombre>
            <parentesco>C</parentesco>
            <porcentaje>50</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Pasaporte</tipoDocId>
            <docId>345678776</docId>
            <email>j.cerdb@gmail.com</email>
            <telefono1>60123212</telefono1>
			<telefono2>25460460</telefono2>
			<numCuenta>34567878</numCuenta>
            <fechaNacimiento>1952-01-02</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>37878832</docId> 
			<numCuenta>34567878</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Sebastian Meneses Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>54657878</docId>
            <email>sebas.meneses@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>54678789</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>43667872</docId> 
			<numCuenta>54678789</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Eduardo Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>2356778</docId>
            <email>edu.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>3455667</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>3456678</docId> 
			<numCuenta>3455667</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>34567878</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>34567878</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>34567878</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>34567878</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>54678789</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>54678789</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3455667</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3455667</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3455667</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-04</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-05" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>luisalc</usuario>
            <contrasenia>lulc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>5677889</docId>
            <email>a.gams@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Luisa Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>rmorgan</usuario>
            <contrasenia>rrmene</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>3456678245</docId>
            <email>r.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Roberth Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>acald</usuario>
            <contrasenia>acr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>54677832</docId>
            <email>alv.cald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2>
            <nombre>Alvaro Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>65788787</numCuenta>
            <saldo>258000</saldo>
            <cliente>5677889</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-05</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>565677843</numCuenta>
            <saldo>380000</saldo>
            <cliente>3456678245</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-05</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>4566576</numCuenta>
            <saldo>3589000</saldo>
            <cliente>54677832</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-05</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Tatiana Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>45677889</docId>
            <email>tat.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>65788787</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>54677832</docId> 
			<numCuenta>65788787</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Sebastian Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>456677823</docId>
            <email>sebas.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>565677843</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>5677889</docId> 
			<numCuenta>565677843</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Andres Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>78786763</docId>
            <email>edu.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>4566576</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>3456678245</docId> 
			<numCuenta>4566576</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>65788787</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>65788787</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>65788787</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>65788787</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>565677843</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>565677843</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>4566576</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>4566576</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>4566576</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-05</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-06" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>erickl</usuario>
            <contrasenia>eeee</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>8786769</docId>
            <email>e.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Erick Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>gmorgan</usuario>
            <contrasenia>grmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>786756565</docId>
            <email>g.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Greivin Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>krcald</usuario>
            <contrasenia>lrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123456353</docId>
            <email>kar.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2>
            <nombre>Karla Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>8778672334</numCuenta>
            <saldo>258000</saldo>
            <cliente>8786769</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-06</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>45453423</numCuenta>
            <saldo>380000</saldo>
            <cliente>786756565</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-06</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>45489879</numCuenta>
            <saldo>3589000</saldo>
            <cliente>123456353</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-06</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Kevin Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>345566723</docId>
            <email>kev.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>8778672334</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>123456353</docId> 
			<numCuenta>8778672334</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Jaiz Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>455667672</docId>
            <email>jair.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>45453423</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>8786769</docId> 
			<numCuenta>45453423</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mateo Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>4566671234</docId>
            <email>mat.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>45489879</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>786756565</docId> 
			<numCuenta>45489879</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>8778672334</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>8778672334</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>8778672334</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>8778672334</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45453423</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45453423</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45489879</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45489879</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45489879</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-06</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-07" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>sofl</usuario>
            <contrasenia>sofiee</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180107</docId>
            <email>e.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Sofia Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>jmorgan</usuario>
            <contrasenia>jmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>0000545634</docId>
            <email>j.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Juan Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>kervincald</usuario>
            <contrasenia>kerrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>767656523</docId>
            <email>ker.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2>
            <nombre>Kervin Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>656653287</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180107</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-07</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>45453423090</numCuenta>
            <saldo>380000</saldo>
            <cliente>0000545634</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-07</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>78786324556</numCuenta>
            <saldo>3589000</saldo>
            <cliente>767656523</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-07</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Hazel Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>4556677834</docId>
            <email>haz.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>656653287</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>767656523</docId> 
			<numCuenta>656653287</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Fabiana Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>4566767623</docId>
            <email>fabi.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>45453423090</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180107</docId> 
			<numCuenta>45453423090</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Samuel Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>34455678723</docId>
            <email>samu.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>78786324556</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>0000545634</docId> 
			<numCuenta>78786324556</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>656653287</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>656653287</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>656653287</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>656653287</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45453423090</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>45453423090</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>78786324556</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>78786324556</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>78786324556</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-07</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-08" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>marl</usuario>
            <contrasenia>maru</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180108</docId>
            <email>e.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Maruja Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>mmorgan</usuario>
            <contrasenia>mmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180188</docId>
            <email>m.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Martha Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>katcald</usuario>
            <contrasenia>kathrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>325678478</docId>
            <email>kathe.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Katherine Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>656653287344</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180108</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-08</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>3455667213</numCuenta>
            <saldo>380000</saldo>
            <cliente>20180188</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-08</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>34565788924</numCuenta>
            <saldo>3589000</saldo>
            <cliente>325678478</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-08</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Iliana Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>234556672</docId>
            <email>ili.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>656653287344</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>325678478</docId> 
			<numCuenta>656653287344</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Rosa Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>245467783245</docId>
            <email>ros.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>3455667213</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180108</docId> 
			<numCuenta>3455667213</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Berny Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>4566776245</docId>
            <email>berny.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>34565788924</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180188</docId> 
			<numCuenta>34565788924</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>656653287344</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>656653287344</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>656653287344</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>656653287344</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3455667213</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3455667213</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>34565788924</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>34565788924</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>34565788924</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-08</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-09" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>syll</usuario>
            <contrasenia>sylvi</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180109</docId>
            <email>s.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Sylvana Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>sheimorgan</usuario>
            <contrasenia>smorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180199</docId>
            <email>s.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Shei Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>carmcald</usuario>
            <contrasenia>carmrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018019999</docId>
            <email>carmela.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Carmela Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>345667782134</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180109</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-09</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>324556560923</numCuenta>
            <saldo>380000</saldo>
            <cliente>20180199</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-09</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>12343560954</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018019999</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-09</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Dora Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>356778245</docId>
            <email>doer.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>345667782134</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018019999</docId> 
			<numCuenta>345667782134</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Adela Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>35677824909</docId>
            <email>adele.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>324556560923</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180109</docId> 
			<numCuenta>324556560923</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Ericka Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>2467812487</docId>
            <email>eri.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>12343560954</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180199</docId> 
			<numCuenta>12343560954</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>345667782134</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>345667782134</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>345667782134</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>345667782134</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>324556560923</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>324556560923</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>12343560954</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>12343560954</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>12343560954</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-09</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-10" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>diegol</usuario>
            <contrasenia>diegui</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180110</docId>
            <email>di.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Diego Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>rossymorgan</usuario>
            <contrasenia>rmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801100</docId>
            <email>rossy.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Rosaura Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>elencald</usuario>
            <contrasenia>elenarcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180110000</docId>
            <email>ele.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Elena Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>456788345923</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180110</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-10</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>467889213456</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801100</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-10</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>456676723445</numCuenta>
            <saldo>3589000</saldo>
            <cliente>20180110000</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-10</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Daniel Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>56777823</docId>
            <email>dan.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>456788345923</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180110000</docId> 
			<numCuenta>456788345923</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Francisco Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>45665762134</docId>
            <email>fran.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>467889213456</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180110</docId> 
			<numCuenta>467889213456</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Julian Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>2467344870</docId>
            <email>j.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>456676723445</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801100</docId> 
			<numCuenta>456676723445</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>456788345923</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456788345923</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456788345923</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456788345923</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>467889213456</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>467889213456</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456676723445</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456676723445</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456676723445</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-10</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-11" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>derekl</usuario>
            <contrasenia>derek</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180111</docId>
            <email>der.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Derek Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>nanamorgan</usuario>
            <contrasenia>nazmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801111</docId>
            <email>na.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Nazareth Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-11-07</fechaNacimiento>
            <usuario>fercald</usuario>
            <contrasenia>ferrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011111</docId>
            <email>fer.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Fernando Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>456788399999</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180111</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-11</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999213456</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801111</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-11</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>456111111445</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011111</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-11</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Ricardo Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>56711177823</docId>
            <email>ric.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>456788399999</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011111</docId> 
			<numCuenta>456788399999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Flory Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>45665555534</docId>
            <email>flor.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>9999213456</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180111</docId> 
			<numCuenta>9999213456</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Andres Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>2444444870</docId>
            <email>a.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>456111111445</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801111</docId> 
			<numCuenta>456111111445</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>456788399999</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456788399999</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456788399999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456788399999</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999213456</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999213456</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456111111445</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456111111445</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>456111111445</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-11</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-12" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>drakl</usuario>
            <contrasenia>drak</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180112</docId>
            <email>dr.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Drake Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>nancymorgan</usuario>
            <contrasenia>nanmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801122</docId>
            <email>nancy.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Nancy Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>ferncald</usuario>
            <contrasenia>fernrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011222</docId>
            <email>fern.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Fernanda Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111111111</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180112</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-12</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2222222222</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801122</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-12</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333333333</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011222</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-12</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Rihanna Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>324556723</docId>
            <email>ric.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111111111</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011222</docId> 
			<numCuenta>111111111111</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Margarita Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>32455667900</docId>
            <email>marga.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2222222222</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180112</docId> 
			<numCuenta>2222222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mathias Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>32455667222</docId>
            <email>a.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333333333</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801122</docId> 
			<numCuenta>333333333333</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111111111</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111111</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111111</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111111</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222222</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333333</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333333</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-12</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-13" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dyl</usuario>
            <contrasenia>dylank</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180113</docId>
            <email>dy.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dylan Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>noemorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801133</docId>
            <email>noe.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Noelia Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>felicald</usuario>
            <contrasenia>felircr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011333</docId>
            <email>feli.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Felipe Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111111112</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180113</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-13</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2222222223</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801133</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-13</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333333334</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011333</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-13</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Riley Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>0000000</docId>
            <email>riri.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111111112</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011333</docId> 
			<numCuenta>111111111112</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Nau Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>33355667900</docId>
            <email>numar.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2222222223</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180113</docId> 
			<numCuenta>2222222223</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Maria Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>32455000222</docId>
            <email>ma.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333333334</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801133</docId> 
			<numCuenta>333333333334</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111111112</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111112</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111112</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111112</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222223</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222223</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333334</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333334</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333334</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-13</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-14" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dionil</usuario>
            <contrasenia>dionk</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180114</docId>
            <email>dio.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dionisio Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>noemmmorgan</usuario>
            <contrasenia>noemmiamorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801144</docId>
            <email>noemmia.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Noemmia Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>fedecald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011444</docId>
            <email>fede.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Federico Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111111122</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180114</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-14</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2222222233</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801144</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-14</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333333344</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011444</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-14</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Rey Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>00111000</docId>
            <email>rey.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111111122</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011444</docId> 
			<numCuenta>111111111122</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mau Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>44455667900</docId>
            <email>maur.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2222222233</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180114</docId> 
			<numCuenta>2222222233</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marianela Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>324559999222</docId>
            <email>mane.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333333344</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801144</docId> 
			<numCuenta>333333333344</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111111122</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111122</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111122</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111122</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222233</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222233</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333344</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333344</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333344</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-14</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-15" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>danionil</usuario>
            <contrasenia>danionk</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180115</docId>
            <email>danio.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Danilo Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>noilymorgan</usuario>
            <contrasenia>noimorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801155</docId>
            <email>noily.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Noily Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>federercald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011555</docId>
            <email>feder.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Federer Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111111222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180115</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-15</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2222222333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801155</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-15</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333333444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011555</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-15</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Reina Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>00111022</docId>
            <email>rey.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111111222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011555</docId> 
			<numCuenta>111111111222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Maury Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>44455667966</docId>
            <email>maur.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2222222333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180115</docId> 
			<numCuenta>2222222333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Maria Elena Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>5512119222</docId>
            <email>mane.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333333444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801155</docId> 
			<numCuenta>333333333444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111111222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111111222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222222333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333333444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-15</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-16" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dennil</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180116</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dennis Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>noramorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801166</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Nora Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>federicacald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011666</docId>
            <email>f.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Federica Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111112222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180116</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-16</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2222223333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801166</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-16</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333334444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011666</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-16</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Retana Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>0011199022</docId>
            <email>r.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111112222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011666</docId> 
			<numCuenta>111111112222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mary Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>44455622966</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2222223333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180116</docId> 
			<numCuenta>2222223333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Maria Jose Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9912119222</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333334444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801166</docId> 
			<numCuenta>333333334444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111112222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111112222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111112222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111112222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222223333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222223333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333334444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333334444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333334444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-16</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-17" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dennissel</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180117</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dennisse Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>nolanmorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801177</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Nolan Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>fernanacald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011777</docId>
            <email>f.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Fernan Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111122222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180117</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-17</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2222233333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801177</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-17</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333344444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011777</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-17</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alejandra Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>0011172399022</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111122222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011777</docId> 
			<numCuenta>111111122222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Martina Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>080855622966</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2222233333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180117</docId> 
			<numCuenta>2222233333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mariana Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9916788934</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333344444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801177</docId> 
			<numCuenta>333333344444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111122222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111122222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111122222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111122222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222233333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2222233333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333344444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333344444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333344444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-17</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-18" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dennial</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180118</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dennia Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>noylanmorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801188</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Noylan Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>fernanacald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011888</docId>
            <email>f.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Francis Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111111222222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180118</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-18</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>22222333333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801188</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-18</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333333444444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011888</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-18</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alejandro Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>11399022</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111111222222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011888</docId> 
			<numCuenta>111111222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Martino Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>0808556676</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>22222333333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180118</docId> 
			<numCuenta>22222333333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mariano Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>99164567</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333333444444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801188</docId> 
			<numCuenta>333333444444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111111222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111222222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111111222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22222333333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22222333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333333444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-18</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-19" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>denial</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180119</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dennia Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>norberthmorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801199</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Norbertho Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>franciscacald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018011999</docId>
            <email>f.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Francisca Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111112222222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180119</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-19</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>22223333333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801199</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-19</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333334444444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018011999</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-19</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alejo Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>113990222</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111112222222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018011999</docId> 
			<numCuenta>111112222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Martin Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>08085566765</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>22223333333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180119</docId> 
			<numCuenta>22223333333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mariam Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9913564567</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333334444444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801199</docId> 
			<numCuenta>333334444444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111112222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111112222222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111112222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111112222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22223333333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22223333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333334444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333334444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333334444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-19</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-20" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>denilal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180120</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Dennila Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>norberthamorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801200</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Norbertha Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>franciscald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012000</docId>
            <email>f.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Francis Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111122222222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180120</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-20</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>22233333333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801200</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-20</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333344444444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012000</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-20</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alex Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>11399440222</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111122222222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012000</docId> 
			<numCuenta>111122222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mario Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>98086765</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>22233333333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180120</docId> 
			<numCuenta>22233333333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Melissa Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>99135666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333344444444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801200</docId> 
			<numCuenta>333344444444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111122222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111122222222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111122222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111122222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22233333333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22233333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333344444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333344444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333344444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-20</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-21" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>danilal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180121</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Daniela Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>ninomorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801211</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Nino Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>finacald</usuario>
            <contrasenia>federcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012111</docId>
            <email>f.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Fina Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>111222222222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180121</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-21</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>22333333333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801211</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-21</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>333444444444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012111</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-21</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alexandra Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>10000222</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>111222222222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012111</docId> 
			<numCuenta>111222222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mario Carlos Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>980800000</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>22333333333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180121</docId> 
			<numCuenta>22333333333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Melina Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>991300005666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>333444444444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801211</docId> 
			<numCuenta>333444444444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>111222222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111222222222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111222222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>111222222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22333333333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>22333333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>333444444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-21</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-22" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>danilal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180122</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Daniela Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>nilamorgan</usuario>
            <contrasenia>nomorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801222</docId>
            <email>n.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Nila Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012222</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jose Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>112222222222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180122</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-22</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>223333333333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801222</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-22</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>334444444444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012222</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-22</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alexandro Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>11111222</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>112222222222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012222</docId> 
			<numCuenta>112222222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marco Carlos Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>980811111</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>223333333333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180122</docId> 
			<numCuenta>223333333333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mely Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>991311115666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>334444444444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801222</docId> 
			<numCuenta>334444444444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>112222222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>112222222222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>112222222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>112222222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>223333333333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>223333333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>334444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>334444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>334444444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-22</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-23" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dannyylal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180123</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Danny Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801233</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bernardo Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jjcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012333</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jose Julian Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>122222222222</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180123</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-23</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>233333333333</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801233</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-23</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>344444444444</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012333</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-23</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alex Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>111116567</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>122222222222</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012333</docId> 
			<numCuenta>122222222222</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marco Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>981811111</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>233333333333</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180123</docId> 
			<numCuenta>233333333333</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Melanie Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>99131666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>344444444444</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801233</docId> 
			<numCuenta>344444444444</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>122222222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>122222222222</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>122222222222</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>122222222222</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>233333333333</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>233333333333</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>344444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>344444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>344444444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-23</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-24" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>dannyylal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180123456</docId>
            <email>de.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Danny Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180123000</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bernardo Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jjcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2218223000</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jose Julian Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>1222222222220</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180123456</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-24</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>2333333333330</numCuenta>
            <saldo>380000</saldo>
            <cliente>20180123000</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-24</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>3444444444440</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2218223000</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-24</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alex Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>5667672334</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>1222222222220</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2218223000</docId> 
			<numCuenta>1222222222220</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marco Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>5678798246</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>2333333333330</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180123456</docId> 
			<numCuenta>2333333333330</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Melanie Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>991334501666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>3444444444440</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180123000</docId> 
			<numCuenta>3444444444440</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>1222222222220</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1222222222220</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1222222222220</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>1222222222220</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2333333333330</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>2333333333330</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3444444444440</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3444444444440</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>3444444444440</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-24</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-25" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carlal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180124</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carlos Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801244</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bernarda Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>julcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012444</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Julian Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444444444</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180124</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-25</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555555555</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801244</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-25</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666666666</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012444</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-25</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Ale Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>11111656799</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444444444</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012444</docId> 
			<numCuenta>444444444444</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marcos Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9818222111</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555555555</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180124</docId> 
			<numCuenta>555555555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mell Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>99131456666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666666666</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801244</docId> 
			<numCuenta>666666666666</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444444</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444444</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444444</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555555</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666666</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666666</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-25</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-26" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carlotal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180125</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carlota Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>badmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801255</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bernard Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>juancald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012555</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Juan Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444444445</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180125</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-26</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555555556</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801255</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-26</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666666667</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012555</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-26</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alejo Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>13411656799</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444444445</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012555</docId> 
			<numCuenta>444444444445</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marco Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9818345111</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555555556</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180125</docId> 
			<numCuenta>555555555556</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Milena Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>991566666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666666667</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801255</docId> 
			<numCuenta>666666666667</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444444445</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444445</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444445</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444445</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555556</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555556</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666667</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666667</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666667</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-26</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-27" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cartal</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180126</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carla Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>banmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801266</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bern Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>juanycald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012666</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Juany Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444444455</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180126</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-27</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555555566</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801266</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-27</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666666677</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012666</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-27</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alexx Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1345611678</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444444455</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012666</docId> 
			<numCuenta>444444444455</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mona Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9815665111</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555555566</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180126</docId> 
			<numCuenta>555555555566</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mile Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>99676766666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666666677</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801266</docId> 
			<numCuenta>666666666677</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444444455</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444455</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444455</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444455</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555566</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555566</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666677</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666677</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666677</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-27</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-28" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cel</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180127</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Celia Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>beamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801277</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Beathriz Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>juanycald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012777</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jeremy Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444444555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180127</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-28</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555555666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801277</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-28</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666666777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012777</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-28</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Alvaro Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>134561145678</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444444555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012777</docId> 
			<numCuenta>444444444555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mora Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>981533665111</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555555666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180127</docId> 
			<numCuenta>555555555666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mil Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9967645766666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666666777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801277</docId> 
			<numCuenta>666666666777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444444555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444444555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555555666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666666777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-28</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-29" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cel</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180129</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Cesar Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>beaamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801299</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bea Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jeremaycald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018012999</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jeremay Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444445555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180129</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-29</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555556666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801299</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-29</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666667777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018012999</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-29</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Allan Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1305678</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444445555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018012999</docId> 
			<numCuenta>444444445555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Molan Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>981501</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555556666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180129</docId> 
			<numCuenta>555555556666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Milagro Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>9066666</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666667777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801299</docId> 
			<numCuenta>666666667777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444445555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444445555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444445555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444445555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555556666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555556666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666667777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666667777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666667777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-29</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-01-31" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cenl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180131</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Cenar Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>beaamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201801311</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bryan Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>josephcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018013111</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Joseph Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444455555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180131</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-31</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555566666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201801311</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-01-31</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666677777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018013111</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-01-31</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Allann Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1305298678</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444455555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018013111</docId> 
			<numCuenta>444444455555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marlen Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>981573401</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555566666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180131</docId> 
			<numCuenta>555555566666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mila Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>23345687</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666677777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201801311</docId> 
			<numCuenta>666666677777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444455555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444455555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444455555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444455555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555566666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555566666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666677777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666677777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666677777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-01-31</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-01" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carlyl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180201</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carly Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bbryamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802011</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bryan Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonacald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018020111</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jona Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444444555555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180201</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-01</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555555666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802011</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-01</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666666777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018020111</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-01</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arlene Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444444555555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018020111</docId> 
			<numCuenta>444444555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marlenne Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>6</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555555666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180201</docId> 
			<numCuenta>555555666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mirla Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>7</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666666777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802011</docId> 
			<numCuenta>666666777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444444555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444555555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444444555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555555666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666666777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-01</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-02" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carlyyl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180202</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carly Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bbbryamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802022</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bryan Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonacald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018020222</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jona Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444445555555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180202</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-02</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555556666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802022</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-02</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666667777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018020222</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-02</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arlenne Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>12</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444445555555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018020222</docId> 
			<numCuenta>444445555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marlenne Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555556666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180202</docId> 
			<numCuenta>555556666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mirla Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>72</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666667777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802022</docId> 
			<numCuenta>666667777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444445555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444445555555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444445555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444445555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555556666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555556666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666667777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666667777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666667777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-02</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-03" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carlyyl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180203</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carta Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bbbryamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802033</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Britt Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonacald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018020333</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Johnny Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777888888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180203</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-03</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888999999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802033</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-03</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>999999000000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018020333</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-03</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arleke Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1267883456</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777888888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018020333</docId> 
			<numCuenta>777777888888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mark Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62788989</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888999999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180203</docId> 
			<numCuenta>888888999999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mimi Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>7223567903445</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>999999000000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802033</docId> 
			<numCuenta>999999000000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777888888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777888888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888999999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888999999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999999000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999999000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999999000000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-03</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-04" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carcayl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180204</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Car Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bbbrrryamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802044</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Britt Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonanncald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018020444</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Johnn Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777778888888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180204</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-04</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888889999999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802044</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-04</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>999990000000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018020444</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-04</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arleke Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>12678788926</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777778888888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018020444</docId> 
			<numCuenta>777778888888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marko Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62788989678</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888889999999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180204</docId> 
			<numCuenta>888889999999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mimim Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>7444444444444</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>999990000000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802044</docId> 
			<numCuenta>999990000000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777778888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777778888888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777778888888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777778888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888889999999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888889999999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999990000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999990000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999990000000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-04</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-05" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carcacyl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180205</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Car Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bblbrrryamorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802055</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Britt Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jlonanncald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018020555</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Johnn Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777788888888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180205</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-05</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888899999999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802055</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-05</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>999900000000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018020555</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-05</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arleke Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1267878892600</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777788888888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018020555</docId> 
			<numCuenta>777788888888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mam Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>627889896786787</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888899999999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180205</docId> 
			<numCuenta>888899999999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mimiml Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>744400004</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>999900000000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802055</docId> 
			<numCuenta>999900000000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777788888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777788888888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777788888888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777788888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888899999999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888899999999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999900000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999900000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>999900000000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-05</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-06" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>carl1l</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180206</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Carl Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>brrrmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802066</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Brandon Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonathancald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018020666</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jonathan Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>4444455555552</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180206</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-06</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555566666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802066</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-06</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666677777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018020666</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-06</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arl Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>4444455555552</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018020666</docId> 
			<numCuenta>4444455555552</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mar Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>623</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555566666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180206</docId> 
			<numCuenta>555566666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mira Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>723</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666677777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802066</docId> 
			<numCuenta>666677777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>4444455555552</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>4444455555552</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>4444455555552</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>4444455555552</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555566666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555566666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666677777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666677777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666677777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-06</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-10" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cc1l</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180210</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>C Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>brandmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802100</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Brand Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonathanncald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018021000</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jonathann Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444455555555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180210</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-10</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>555666666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802100</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-10</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>666777777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018021000</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-10</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arka Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1234</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444455555555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018021000</docId> 
			<numCuenta>444455555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mara Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>6234</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>555666666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180210</docId> 
			<numCuenta>555666666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mirador Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>7234</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>666777777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802100</docId> 
			<numCuenta>666777777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444455555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444455555555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444455555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444455555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555666666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>555666666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>666777777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-10</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-14" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cac1l</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180214</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Ca Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bradmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802144</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Brad Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonathanncald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018021444</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jonathann Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>444555555555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180214</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-14</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>5556666666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802144</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-14</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>6667777777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018021444</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-14</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Arka Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>12345</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>444555555555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018021444</docId> 
			<numCuenta>444555555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mara Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62345</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>5556666666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180214</docId> 
			<numCuenta>5556666666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Mirador Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>72345</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>6667777777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802144</docId> 
			<numCuenta>6667777777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>444555555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444555555555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444555555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>444555555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5556666666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5556666666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6667777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6667777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6667777777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-14</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-18" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>cacr1l</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180218</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Car Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bradmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802188</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Brad Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonathanncald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018021888</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jonathann Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>445555555555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180218</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-18</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>5566666666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802188</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-18</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>6677777777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018021888</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-18</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Ara Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123456</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>445555555555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018021888</docId> 
			<numCuenta>445555555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Ma Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>623456</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>5566666666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180218</docId> 
			<numCuenta>5566666666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Marca Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>723456</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>6677777777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802188</docId> 
			<numCuenta>6677777777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>445555555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>445555555555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>445555555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>445555555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5566666666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5566666666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6677777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6677777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6677777777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-18</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-22" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>xl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180222</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>X Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>bbmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802222</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>Bb Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>jonathanncald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018022222</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Jonathann Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>455555555555</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180222</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-22</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>5666666666666</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802222</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-22</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>6777777777777</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018022222</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-22</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Ana Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>1234567</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>455555555555</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018022222</docId> 
			<numCuenta>455555555555</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>M Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>6234567</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>5666666666666</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180222</docId> 
			<numCuenta>5666666666666</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>Naty Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>7234567</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>6777777777777</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802222</docId> 
			<numCuenta>6777777777777</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>455555555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>455555555555</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>455555555555</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>455555555555</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5666666666666</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>5666666666666</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6777777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6777777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>6777777777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-22</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-26" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>zl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180226</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>Z Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>kkmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802266</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>K Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>leocald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018022666</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>Leo Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777777777</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180226</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-26</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888888888</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802266</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-26</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999999999999</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018022666</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-26</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>Y Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>12345678</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777777777</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018022666</docId> 
			<numCuenta>777777777777</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>O Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62345678</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888888888</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180226</docId> 
			<numCuenta>888888888888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>V Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>72345678</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>9999999999999</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802266</docId> 
			<numCuenta>9999999999999</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777777</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777777</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777777</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888888</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999999</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999999</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-26</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-02-28" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>hl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180228</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>H Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>lmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201802288</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>L Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>gcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018022888</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>G Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777777778</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180228</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-28</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888888889</numCuenta>
            <saldo>380000</saldo>
            <cliente>201802288</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-02-28</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999999999990</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018022888</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-02-28</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>W Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123456789</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777777778</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018022888</docId> 
			<numCuenta>777777777778</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>O Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>623456789</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888888889</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180228</docId> 
			<numCuenta>888888888889</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>V Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>723456789</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>9999999999990</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201802288</docId> 
			<numCuenta>9999999999990</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777777778</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777778</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777778</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777778</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888889</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888889</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999990</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999990</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999990</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-02-28</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-03-01" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>hl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180311</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>K Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>lmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201803011</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>J Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>gcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018030111</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>T Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777777788</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180311</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-01</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888888899</numCuenta>
            <saldo>380000</saldo>
            <cliente>201803011</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-03-01</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999999999900</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018030111</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-01</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>W Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>12346556789</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777777788</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018030111</docId> 
			<numCuenta>777777777788</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>O Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62365456789</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888888899</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180311</docId> 
			<numCuenta>888888888899</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>V Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>72345678789</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>9999999999900</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201803011</docId> 
			<numCuenta>9999999999900</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777777788</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777788</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777788</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777788</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888899</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888899</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999900</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999900</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999900</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-01</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-03-02" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>hl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180302</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>K Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>lmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201803022</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>J Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>gcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018030222</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>T Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777777888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180302</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-02</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888888999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201803022</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-03-02</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999999999000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018030222</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-02</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>W Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>123462556789</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777777888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018030222</docId> 
			<numCuenta>777777777888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>O Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>6236547656789</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888888999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180302</docId> 
			<numCuenta>888888888999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>V Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>7235445678789</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>9999999999000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201803022</docId> 
			<numCuenta>9999999999000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777777888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777777888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888888999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999999000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-02</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-03-03" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>hl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180303</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>K Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>lmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201803033</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>J Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>gcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018030333</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>T Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777778888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180303</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-03</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888889999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201803033</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-03-03</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999999990000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018030333</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-03</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>U Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>12340009</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777778888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018030333</docId> 
			<numCuenta>777777778888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>C Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>62300006789</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888889999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180303</docId> 
			<numCuenta>888888889999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>NJ Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>723000089</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>9999999990000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201803033</docId> 
			<numCuenta>9999999990000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777778888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777778888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777778888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777778888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888889999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888889999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999990000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999990000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999990000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-03</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-03-04" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>hl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180304</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>K Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>lmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201803044</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>J Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>gcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018030444</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>T Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>777777788888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180304</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-04</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>888888899999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201803044</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-03-04</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>9999999900000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018030444</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-04</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>U Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>10002340009</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>777777788888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018030444</docId> 
			<numCuenta>777777788888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>C Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>6230000678900</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>888888899999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180304</docId> 
			<numCuenta>888888899999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>NJ Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>72543000089</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>9999999900000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201803044</docId> 
			<numCuenta>9999999900000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>777777788888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777788888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777788888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>777777788888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888899999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>888888899999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999900000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999900000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>9999999900000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-04</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
	  
	  <FechaOperacion fecha= "2018-03-05" >
         <Cliente>
            <fechaNacimiento>1930-12-12</fechaNacimiento>
            <usuario>hl</usuario>
            <contrasenia>dlopc</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>20180305</docId>
            <email>c.lop@gmail.com</email>
            <telefono1>88852048</telefono1>
			<telefono2>20459870</telefono2>
            <nombre>K Lopez Carvajal</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1924-12-10</fechaNacimiento>
            <usuario>jjjmorgan</usuario>
            <contrasenia>bmorgan</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>201803055</docId>
            <email>b.morg@gmail.com</email>
            <telefono1>87003214</telefono1>
			<telefono2>24555505</telefono2>
            <nombre>JJJ Morgan Araya</nombre>
         </Cliente>
		 <Cliente>
            <fechaNacimiento>1954-02-07</fechaNacimiento>
            <usuario>gcald</usuario>
            <contrasenia>jrcr</contrasenia>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>2018030555</docId>
            <email>j.rcald@gmail@gmail.com</email>
            <telefono1>82568910</telefono1>
			<telefono2>24503179</telefono2> 
            <nombre>T Ruiz Calderon</nombre>
         </Cliente>
         <Cuenta>
            <numCuenta>778888888888</numCuenta>
            <saldo>258000</saldo>
            <cliente>20180305</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-05</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>889999999999</numCuenta>
            <saldo>380000</saldo>
            <cliente>201803055</cliente>
            <tipoCuentaAhorro>Clase Media</tipoCuentaAhorro>
            <fechaCreacion>2018-03-05</fechaCreacion>
         </Cuenta>
		 <Cuenta>
            <numCuenta>990000000000</numCuenta>
            <saldo>3589000</saldo>
            <cliente>2018030555</cliente>
            <tipoCuentaAhorro>Clase Opulenta</tipoCuentaAhorro>
            <fechaCreacion>2018-03-05</fechaCreacion>
         </Cuenta>
         <BeneficiarioNuevo>
            <nombre>U Jimenez Solano</nombre>
            <parentesco>H</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Nacional</tipoDocId>
            <docId>10002340006789</docId>
            <email>a.jim@gmail.com</email>
            <telefono1>60138525</telefono1>
			<telefono2>27410505</telefono2>
			<numCuenta>778888888888</numCuenta>
            <fechaNacimiento>1990-07-31</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>P</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>2018030555</docId> 
			<numCuenta>778888888888</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>CC Cruz Gamboa</nombre>
            <parentesco>D</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>623000067890099</docId>
            <email>m.cruz@gmail.com</email>
            <telefono1>87515806</telefono1>
			<telefono2>24930520</telefono2>
			<numCuenta>889999999999</numCuenta>
            <fechaNacimiento>2006-05-06</fechaNacimiento>
         </BeneficiarioNuevo> 
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>20180305</docId> 
			<numCuenta>889999999999</numCuenta> 
         </BeneficiarioExistente>
		 <BeneficiarioNuevo>
            <nombre>NJY Calderon Meza</nombre>
            <parentesco>M</parentesco>
            <porcentaje>75</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/>
            <tipoDocId>Cedula Extranjera</tipoDocId>
            <docId>725430000891234</docId>
            <email>m.cal@gmail.com</email>
            <telefono1>62406580</telefono1>
			<telefono2>24503179</telefono2>
			<numCuenta>990000000000</numCuenta>
            <fechaNacimiento>1997-10-12</fechaNacimiento>
         </BeneficiarioNuevo>
		 <BeneficiarioExistente> 
            <parentesco>B</parentesco>
            <porcentaje>25</porcentaje> 
            <activo>1</activo>
            <fechaDesactivo/> 
            <docId>201803055</docId> 
			<numCuenta>990000000000</numCuenta> 
         </BeneficiarioExistente>
         <Movimiento>
            <numCuenta>778888888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>150000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>778888888888</numCuenta>
            <tipoMovimiento>retiroCH</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>-100000</monto>  
			<descripcion>Banco Nacional</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>778888888888</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>778888888888</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>200000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>889999999999</numCuenta>
            <tipoMovimiento>compras</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>-355000</monto> 
			<descripcion>Bar La Nave</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>889999999999</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>-41000</monto> 
			<descripcion>ATM07</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>990000000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>50000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>990000000000</numCuenta>
            <tipoMovimiento>deposito</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>20000</monto> 
			<descripcion>TGH456MC</descripcion>
         </Movimiento>
		 <Movimiento>
            <numCuenta>990000000000</numCuenta>
            <tipoMovimiento>retiroCA</tipoMovimiento>
            <fecha>2018-03-05</fecha>
            <monto>-30000</monto> 
			<descripcion>ATM07</descripcion> 
         </Movimiento>
      </FechaOperacion>
   </Simulacion>
</xml>

'

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
exec sp_xml_removedocument @hDoc

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