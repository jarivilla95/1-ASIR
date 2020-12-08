#Ejercicios de Procedimientos y Cursores
#GBD_U5_T2
#Ejercicio1
select v.marca,v.modelo,v.color, if(r.Reparado=1, 'Reparado','No reparado') as 'Estado'
from clientes c join vehiculos v on c.CodCliente=v.CodCliente
join reparaciones r on v.Matricula=r.Matricula
where v.Matricula not in(
	select v.Matricula
    from clientes c join vehiculos v on c.CodCliente=v.CodCliente
	join reparaciones r on v.Matricula=r.Matricula
    where r.Reparado=1
    );
select distinct c.*
from clientes c join vehiculos v on c.codCliente=v.CodCliente
join reparaciones r on v.matricula=r.Matricula
where year(r.FechaEntrada) between 2010 and 2011
order by(c.CodCliente);
call GBD_U5_T2_E1();
#Ejercicio 2
call GBD_U5_T2_E2('0011 ABC');
select vehiculos.*
from vehiculos;
#Ejercicio3

#Ejercicio4

#GBD_U5_T3
#Ejercicio2
select count(*), monthname(fechaEntrada), year(fechaEntrada)
from reparaciones
where fechaEntrada between f1 and f2
group by monthname(fechaEntrada), year(fechaEntrada); 
call GBD_U5_T3_E2("2000-01-01","2020-01-01");
#Ejercicio3
select nombre, apellidos, direccion
from empleados;
select GBD_U5_T3_E3();



    

