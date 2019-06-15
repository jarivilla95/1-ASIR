-- RECUPERACION 2º TRIMESTRE
-- 		HECHO EN CASA
-- EJERCICIO 1
select c.*
from customers c
where c.creditLimit between 50000 and 100000
and c.customerNumber IN(
	select c.customerNumber
    from customers c1 join orders o1 on c1.customerNumber=o1.customerNumber
    having count(o1.ordernumber)>5
    );
-- EJERCICIO 2
select e.*
from employees e join offices o on e.officeCode=o.officeCode
where o.city="San Francisco" 
and e.employeeNumber in(
	select e.employeeNumber
    from employees e join customers c on e.employeeNumber=c.salesRepEmployeeNumber
    group by c.customerNumber
    having count(c.customerNumber) between 1 and 5
    );
    
-- EJERCICIO 3
select count(o.orderNumber)as "CantidadPedidos", year(o.orderDate)
from orders o
group by year(o.orderDate);

-- EJERCICIO 4
select pl.productLine, count(distinct od.orderNumber) "Cantidad"
from productlines pl join products p on pl.productLine=p.productLine
join orderdetails od on p.productCode=od.productCode
group by pl.productLine;

-- EJERCICIO 5
select p.productName , p.productLine , sum(od.quantityOrdered)
from products p join orderdetails od on p.productCode=od.productCode
group by p.productCode
having sum(od.quantityOrdered)=(
	select sum(od.quantityOrdered)
	from products p join orderdetails od on p.productCode=od.productCode
	group by p.productCode
    order by sum(od.quantityOrdered) desc limit 1
);

-- EJERCICIO 6
select c.customerNumber, c.customerName
from customers c 
where c.customerNumber not in(
	select p.customerNumber
    from payments p
);

-- EJERCICIO 8
select distinct c.*
from customers c join orders o on c.customerNumber=o.customerNumber
join orderdetails od on o.orderNumber=od.orderNumber
join products p on od.productCode=p.productCode
where p.productLine="Ships";

-- EJERCICIO 9
select c.customerName, sum(p.amount)
from customers c join payments p on c.customerNumber=p.customerNumber
group by c.customerNumber
having sum(p.amount) < (
	select avg(p.amount) 
    from payments p
);

-- EJERCICIO 10
select p.*
from payments p join customers c on p.customerNumber=c.customerNumber
join employees e on c.salesRepEmployeeNumber=e.employeeNumber
join offices o on e.officeCode=o.officeCode
where o.city="NYC";