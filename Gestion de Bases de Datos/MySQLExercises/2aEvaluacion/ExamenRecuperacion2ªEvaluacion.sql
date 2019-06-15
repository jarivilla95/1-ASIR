#Examen Recuperacion 2ª Evaluacion
use classicmodels;
#Ejercicio 1
select c.*, p.productLine
from customers c join orders o on c.customerNumber=o.customerNumber
join orderdetails od on o.orderNumber=od.orderNumber
join products p on od.productCode=p.productCode
join productlines pl on p.productLine=pl.productLine
where c.customerNumber not in(
	select c.customerNumber
	from customers c join orders o on c.customerNumber=o.customerNumber
	join orderdetails od on o.orderNumber=od.orderNumber
	join products p on od.productCode=p.productCode
	join productlines pl on p.productLine=pl.productLine
	where p.productLine="Ships"
);
#Ejercicio2
select c.customerNumber, c.contactName, c.contactLastName
from customers c join payments p on c.customerNumber=p.customerNumber
