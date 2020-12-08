-- EXAMEN 2º TRIMESTRE
-- EJERCICIO 1
SELECT c.*, e.*
FROM customers c LEFT JOIN employees e 
ON c.salesRepEmployeeNumber=e.employeeNumber;

-- EJERCICIO 2
SELECT o.*, COUNT(e.employeeNumber)
FROM offices o JOIN employees e ON o.officeCode=e.officeCode
GROUP BY o.officeCode
HAVING COUNT(*)=(
	SELECT COUNT(e.employeeNumber)
	FROM offices o JOIN employees e ON o.officeCode=e.officeCode
	GROUP BY o.officeCode
    ORDER BY(e.employeeNumber) LIMIT 1
);
-- EJERCICIO 3
SELECT o.orderNumber, COUNT(*)
FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber
JOIN products p ON od.productCode=p.productCode
JOIN productlines pl ON p.productLine=pl.productLine
GROUP BY o.orderNumber
HAVING COUNT(pl.productLine)=(
	SELECT COUNT(*)
	FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber
	JOIN products p ON od.productCode=p.productCode
	JOIN productlines pl ON p.productLine=pl.productLine
	GROUP BY o.orderNumber
	ORDER BY COUNT(pl.productLine) DESC LIMIT 1
    );

-- EJERCICIO 4
SELECT c.*, AVG(p.amount)
FROM customers c JOIN payments p ON c.customerNumber=p.customerNumber
GROUP BY c.customerNumber;

-- EJERCICIO 5
SELECT c.customerName, p.paymentDate
FROM customers c LEFT JOIN payments p
ON c.customerNumber=p.customerNumber
WHERE p.paymentDate IS NULL;

-- EJERCICIO 6
SELECT o.orderNumber,off.city
FROM orders o JOIN customers c ON o.customerNumber=c.customerNumber
JOIN employees e ON c.salesRepEmployeeNumber=e.employeeNumber
JOIN offices off ON e.officeCode=off.officeCode
WHERE off.city="Paris";

-- EJERCICIO 7
SELECT SUM(od.quantityOrdered*od.priceEach)
FROM orderdetails od JOIN orders o ON od.orderNumber=o.orderNumber
WHERE YEAR(o.shippedDate)="2004";

-- EJERCICIO 8
SELECT MONTH(o.orderDate),YEAR(o.orderDate), COUNT(o.orderNumber)
FROM orders o
GROUP BY YEAR(o.orderNumber), MONTH(o.orderNumber)
ORDER BY YEAR(o.orderDate) ,MONTH(o.orderDate);