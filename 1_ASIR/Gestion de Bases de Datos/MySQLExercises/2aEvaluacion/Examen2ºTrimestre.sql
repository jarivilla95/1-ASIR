use classicmodels;

-- Ejercicio 1 --

SELECT c.* , e.*
FROM customers c LEFT JOIN employees e
ON c.salesRepEmployeeNumber=e.employeeNumber;

-- Ejercicio 2 --

SELECT o.* , COUNT (e.employeeNumber)
FROM offices o JOIN employees e
ON o.officeCode=e.officeCode
GROUP BY o.officeCode 
HAVING COUNT (e.employeeNumber)=
(SELECT COUNT(e.employeeNumber)
FROM offices o JOIN employees e
ON o.officeCode=e.officeCode
GROUP BY o.officeCode
ORDER BY COUNT(e.employeenumber) DESC LIMIT 1);

-- Ejercicio 3 --

SELECT o.*, COUNT(p.productLine)
FROM orders o JOIN orderdetails od
ON o.orderNumber=od.orderNumber
JOIN products p ON od.productCode=p.productCode
JOIN productlines pl ON p.productLine=pl.productLine
GROUP BY o.orderNumber
HAVING COUNT(p.productLine)>2;

-- Ejercicio 4 --

SELECT c.*, AVG(p.amount)
FROM customers c JOIN payments p
ON c.customerNumber=p.customerNumber
GROUP BY c.customerNumber;

-- Ejercicio 5 -- 

SELECT c.*
FROM customers c
WHERE c.customerNumber NOT IN(
SELECT c.customerNumber
FROM customers c JOIN payments p
ON c.customerNumber=p.customerNumber);

-- Ejercicio 6 --

SELECT o.*, off.city
FROM orders o JOIN customers c ON o.customerNumber=c.customerNumber
JOIN employees e ON c.salesRepEmployeeNumber=e.employeeNumber
JOIN offices off ON e.officeCode=off.officeCode
WHERE off.city='Paris' ;

-- Ejercicio 7 --

SELECT SUM(od.priceEach*od.quantityOrdered)
FROM orderdetails od JOIN orders o
ON od.orderNumber=o.orderNumber
WHERE o.shippedDate BETWEEN '2004-01-01' AND '2004-12-31';

-- Ejercicio 8 --

SELECT MONTH(orderDate) 'Mes', YEAR(orderDate) 'Año' , COUNT(*) 'TotalPedidos'
FROM orders
WHERE orderDate>'2003-01-01' AND orderDate<'2005-12-31'
GROUP BY MONTH(orderDate), YEAR(orderDate)
ORDER BY YEAR(orderDate) ,MONTH(orderDate);

-- EJERCICIO 9
SELECT e.*, COUNT(o.ordernumber)
FROM employees e JOIN customers c
ON e.employeenumber=c.salesrepemployeenumber JOIN orders o 
ON c.customernumber=o.customernumber
GROUP BY e.employeenumber
HAVING COUNT(o.ordernumber)=(SELECT COUNT(o.ordernumber)
FROM employees e JOIN customers c
ON e.employeenumber=c.salesrepemployeenumber JOIN orders o 
ON c.customernumber=o.customernumber
GROUP BY e.employeenumber
ORDER BY COUNT(o.ordernumber) DESC LIMIT 1);
-- EJERCICIO 10
SELECT(SELECT SUM(quantityordered*priceeach) FROM orders o JOIN orderdetails od
ON o.ordernumber=od.ordernumber GROUP BY o.ordernumber ORDER BY SUM(quantityordered*priceeach) DESC LIMIT 1)
-(SELECT SUM(quantityordered*priceeach) FROM orders o JOIN orderdetails od
ON o.ordernumber=od.ordernumber GROUP BY o.ordernumber ORDER BY SUM(quantityordered*priceeach) ASC LIMIT 1) diferenciaPedido;
-- EJERCICIO 11
UPDATE employees SET reportsTo= (SELECT employeeNumber FROM 
( SELECT * FROM employees e WHERE lastname="Patterson" AND firstName="William" )  e)
WHERE officeCode = (SELECT officeCode FROM offices WHERE city="Paris");
-- EJERCICIO 12
ALTER TABLE employees ADD COLUMN birthdate date;
