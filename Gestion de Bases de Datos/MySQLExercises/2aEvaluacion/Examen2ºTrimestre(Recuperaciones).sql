-- EXAMEN 2º TRIMESTRE --
-- EJERCICIO 1
 SELECT c.*, e.*
 FROM customers c LEFT JOIN employees e 
 ON c.salesRepEmployeeNumber=e.employeeNumber;
 
 -- EJERCICIO 2
SELECT o.officeCode, COUNT(*) AS "Mas empleados"
FROM employees e JOIN offices o
ON e.officeCode=o.officeCode
GROUP BY o.officeCode
HAVING COUNT(*) = (
	SELECT COUNT(*)
	FROM employees e JOIN offices o
	ON e.officeCode=o.officeCode
    GROUP BY o.officeCode
    ORDER BY COUNT(e.employeenumber) DESC LIMIT 1
);
 
 -- EJERCICIO 3
 SELECT o.orderNumber, COUNT(p.productLine)
 FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber
 JOIN products p ON od.productCode=p.productCode
 JOIN productlines pl ON p.productLine=pl.productLine
 GROUP BY o.orderNumber
 HAVING COUNT(p.productLine)>2;
 
 -- EJERCICIO 4
 SELECT c.customerNumber, AVG(p.amount)
 FROM customers c JOIN payments p
 ON c.customerNumber=p.customerNumber
 GROUP BY c.customerNumber;
 
 -- EJERCICIO 5
 SELECT c.customerNumber
 FROM customers c LEFT JOIN payments p
 ON c.customerNumber=p.customerNumber
 WHERE p.amount IS NULL;
 
 SELECT c.customerNumber
 FROM customers c 
 WHERE c.customerNumber NOT IN (
	SELECT p.customerNumber
    FROM payments p);

-- EJERCICIO 6
SELECT o.*
FROM orders o JOIN customers c ON o.customerNumber=c.customerNumber
JOIN employees e ON c.salesRepEmployeeNumber=e.employeeNumber
JOIN offices off ON e.officeCode=off.officeCode
WHERE off.city="Paris";

-- EJERCICIO 7
SELECT od.orderNumber, ROUND(SUM(od.quantityOrdered*od.priceEach),2) "Ganancias 2004"
FROM orders o JOIN orderdetails od
ON o.orderNumber = od.orderNumber
WHERE YEAR(o.shippedDate)="2004"
GROUP BY od.orderNumber;

-- EJERCICIO 8
SELECT MONTH(o.orderDate),YEAR(o.orderDate), count(o.orderNumber)
FROM orders o
WHERE YEAR(o.orderDate) BETWEEN("2003") AND ("2005")
GROUP BY MONTH(o.orderDate),YEAR(o.orderDate);

-- EJERCICIO 9
SELECT e.employeeNumber, e.firstName, e.lastName , count(*)
FROM employees e JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber
JOIN orders o ON c.customerNumber=o.customerNumber
GROUP BY e.employeeNumber
HAVING COUNT(*)=(
	SELECT count(*)
	FROM employees e JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber
	JOIN orders o ON c.customerNumber=o.customerNumber
	GROUP BY e.employeeNumber
    ORDER BY count(*) DESC LIMIT 1
);

-- EJERCICIO 10
SELECT 
(SELECT SUM(od.quantityOrdered*od.priceEach)
FROM orderdetails od JOIN orders o ON od.orderNumber=o.orderNumber
GROUP BY o.orderNumber
ORDER BY SUM(od.quantityOrdered*od.priceEach) DESC LIMIT 1)
-
(SELECT SUM(od.quantityOrdered*od.priceEach)
FROM orderdetails od JOIN orders o ON od.orderNumber=o.orderNumber
GROUP BY o.orderNumber
ORDER BY SUM(od.quantityOrdered*od.priceEach) LIMIT 1) AS "Diferencia";

-- EJERCICIO 11(Dudas)
SELECT e.jobTitle, e.firstName, e.lastName , o.city
FROM employees e JOIN offices o ON e.officeCode=o.officeCode;

-- EJERCICIO 12 
ALTER TABLE employees ADD COLUMN birthdate date;