#EJERCICIOS 2º TRIMESTRE
#Todo de empleados
select * 
from empleados;
#Nombre, apellidos y dni de empleados
select nombre, apellidos, dni
from empleados;
#Recambios con mas de 20 en stock
select *
from recambios
where stock>"20";
#Recambios que tengan stock entre 30 y 50
select *
from recambios
where stock between 30 and 50;
#Datos de las reparaciones de Enero de 2011
select *
from reparaciones
where year(fechaEntrada)="2011" and month(fechaEntrada)="01";
select * 
from reparaciones 
where fechaEntrada between '2011-01-01' and '2011-01-31'; 
#Cuantos km tenian los coches que vinieron a reparar en Noviembre o Diciembre
select Matricula, km, FechaEntrada
from reparaciones
where month(FechaEntrada)="11" or month(FechaEntrada)="12";
#Clientes de santander
select nombre, apellidos, dni, direccion
from clientes
where direccion like "%_Santander";
#Nombre y apellidos dueños y todos los datos de su coche 
select c.nombre, c.apellidos, v.*
from clientes c join vehiculos v on c.CodCliente=v.CodCliente;
#Nombre y apellidos y direccion de los dueños de lso coches que han venido con mas de 50000km 
select distinct c.nombre, c.apellidos, c.direccion
from clientes c join reparaciones r
where r.km>50000;
#Nombre y apellidos de los empleados que han participado en reparaciones en Diciembre de 2010  
select distinct c.nombre , c.apellidos
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
join intervienen i on r.IdReparacion=i.IdReparacion
where year(r.FechaEntrada)="2010" and month(r.FechaEntrada)="12";
#Descripcion de las piezas (recambios) utilizadas en reparaciones de coches renault 
select re.descripcion
from recambios re join incluyen i on re.IdRecambio=i.IdRecambio
join reparaciones r on i.IdReparacion=r.IdReparacion
join vehiculos v on r.Matricula=v.Matricula
where v.Marca="Renault";
#Nombre y apellidos de los coches a los que se les ha puesto Bateria nueva 
select c.nombre, c.apellidos, r.FechaEntrada,r.FechaSalida, v.Matricula, v.FechaMatriculacion
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
join incluyen i on r.IdReparacion=i.IdReparacion
join recambios re on i.IdRecambio=re.IdRecambio
where re.Descripcion="Bateria";
#Marca modelo y matricula de los vehiculos que han tenido alguna reparacion que no ha pagado el dueño
select v.marca, v.modelo, v.matricula, c.Nombre, c.Apellidos, f.IdFactura
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
join facturas f on r.IdReparacion=f.IdReparacion
where c.CodCliente!=f.CodCliente;
#Nombre y apellidos de los dueños de los vehiculos cuya matricula empieza por 13 y tienen mas de 10000km
select distinct c.nombre, c.apellidos, v.matricula
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
where v.Matricula like "13%" and r.Km>"10000";
#Matricula marca y modelo de los coches que han pasado mas de 10 dias en el taller 
select v.matricula, v.marca, v.modelo, r.FechaEntrada, r.FechaSalida
from vehiculos v join reparaciones r
where date_add(r.FechaEntrada, interval 10 day)<r.FechaSalida;
#Matricula marca y modelo de los coches que han pasado mas de 10 dias en el taller (contando los que siguen a dia de hoy) 
select v.matricula, v.marca, v.modelo, r.FechaEntrada, r.FechaSalida
from vehiculos v join reparaciones r on v.Matricula=r.Matricula
where (date_add(r.fechaEntrada,interval 10 day)<r.FechaSalida)
or (r.FechaSalida is null and date_add(r.fechaEntrada, interval 10 day)<curdate());
#Nombre y apellidos de los empleados que llevan mas de 10 años en la empresa
select e.nombre, e.apellidos, e.FechaAlta
from empleados e
where date_add(e.FechaAlta,interval 10 year)<curdate();
#Matricula, marca y modelo de los vehiculos que tengan entre 10 y 12 años a los que se le puso bateria
select v.matricula, v.marca, v.modelo
from vehiculos v join reparaciones r on v.Matricula=r.Matricula
join incluyen i on r.IdReparacion=i.IdReparacion
join recambios re on i.IdRecambio=re.IdRecambio
where date_add(v.fechaMatriculacion, interval 10 year)<curdate() 
and date_add(v.fechaMatriculacion, interval 12 year)>curdate()
and re.Descripcion="Bateria";
#Descripcion de las actuaciones realizadas en los coches de los clientes de Madrid
select re.descripcion
from recambios re join incluyen i on re.IdRecambio=i.IdRecambio
join reparaciones r on i.IdReparacion=r.IdReparacion
join vehiculos v on r.Matricula=v.Matricula
join clientes c on v.CodCliente=c.CodCliente
where c.Direccion like "%Madrid";
#Coste de los inyectores utilizados en la reparacion 3 
select i.unidades*re.precioReferencia as "Coste"
from recambios re join incluyen i on re.IdRecambio=i.IdRecambio
join reparaciones r on i.IdReparacion=r.IdReparacion
where r.IdReparacion="3" and re.Descripcion="Inyectores";
#Dias que han estado en el taller los coches de los clientes de santander o torrelavega
select c.CodCliente, r.FechaSalida-r.FechaEntrada as "Dias", c.Direccion
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
where c.direccion like '%Santander' or c.direccion like '%Torrelavega'; 
#Cadena concatenada de nombre apellidos direccion y telefono de clientes 
select concat('Nombre: ',c.nombre,'\n'
,'Apellidos: ',c.apellidos,'\n'
,'Direccion: ',c.direccion,'\n'
,'Telefono: ',c.telefono) as 'DatosCliente'
from clientes c
where c.direccion like "%Madrid";
#Matricula:.... 
#Marca:.... 
#Modelo:.... 
#Dueño: nombre, apellidos, direccion 
#De los coches traidos a reparar en Diciembre de 2010 
select concat('Matricula: ',v.matricula,'\n',
'Marca: ',v.marca,'\n',
'Modelo: ',v.modelo,'\n',
'Dueño: ',c.nombre, c.apellidos, c.direccion) as 'Datos'
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
where month(r.FechaEntrada)='12' and year(r.FechaEntrada)='2010';
#Datos de los coches que han sufrido actuaciones que han durado mas de los previsto
#Matricula:.... 
#--------------
#la matricula 
#----------- 
#Marca: 
#---------- 
#la marca 
#---------- 
#Modelo: 
#----------- 
#el modelo 
#-----------
select concat('--------------\n',
'Matricula: \n',
'--------------\n',
v.matricula,'\n'
'--------------\n',
'Marca: \n',
'--------------\n',
v.marca,'\n',
'--------------\n',
'Modelo: \n',
'--------------\n',
v.modelo,'\n'
'--------------\n') as 'DatosVehiculos'
from vehiculos v join reparaciones r on v.Matricula=r.Matricula
join realizan rl on r.IdReparacion=rl.IdReparacion
join actuaciones a on rl.Referencia=a.Referencia
where a.TiempoEstimado<rl.Horas;
#Matricula marca y modelo de los vehiculos sin dueño (rigth join) 
select v.matricula, v.marca, v.modelo, c.Nombre
from vehiculos v right join clientes c on v.CodCliente=c.CodCliente
where c.CodCliente is null;
#Nombre, apellidos y direccion de los clientes que poseen algun coche 'renault' y que no han pagado factura
select c.nombre, c.apellidos, c.direccion
from facturas f right join clientes c on f.CodCliente=c.CodCliente
join vehiculos v on c.CodCliente=v.CodCliente
where v.Marca='Renault' and f.IdFactura is null;
select c.nombre, c.apellidos, c.direccion, c.codcliente
from clientes c left join facturas f on c.codcliente=f.codcliente 
join vehiculos v on v.codcliente=c.codcliente  
where v.marca='Renault' and f.idfactura is null; 
#Descripcion de los recambios que nunca se han utilizado y tienen mas de 100 en stock

 

