-- EXAMEN RECUPERACION 2º TRIMESTRE
-- EJERCICIO 1
SELECT c.*
FROM customers c 
WHERE c.creditLimit BETWEEN "50000" AND "100000"
AND c.customerNumber IN(
	SELECT c.customerNumber
    FROM customers c1 JOIN orders o1
    ON c1.customerNumber=o1.customerNumber
    HAVING COUNT(o1.orderNumber)>5
);
-- EJERCICIO 2
SELECT e.*
FROM employees e JOIN offices o ON e.officeCode=o.officeCode
WHERE o.city="San Francisco" 
AND e.employeeNumber IN(
	SELECT e.employeeNumber
    FROM employees e JOIN customers c ON c.salesRepEmployeeNumber=e.employeeNumber
    GROUP BY e.employeeNumber
    HAVING COUNT(c.customerNumber) BETWEEN '1' AND '6'
);

-- EJERCICIO 3
SELECT YEAR(o.orderDate) "Año", COUNT(o.orderNumber) "NumeroPedidos"
FROM orders o
GROUP BY YEAR(o.orderDate);

-- EJERCICIO 4
SELECT p.productLine, COUNT(DISTINCT o.orderNumber) "PedidosExistentes"
FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber
JOIN products p ON od.productCode=p.productCode
JOIN productlines pl ON p.productLine=pl.productLine
GROUP BY p.productLine;

-- EJERCICIO 5
SELECT p.productName,p.productLine, SUM(od.quantityOrdered)
FROM products p JOIN orderdetails od ON p.productCode=od.productCode
GROUP BY p.productCode
HAVING SUM(od.quantityOrdered)=(
	SELECT SUM(od.quantityOrdered)
	FROM products p JOIN orderdetails od ON p.productCode=od.productCode
	GROUP BY p.productCode
	ORDER BY SUM(od.quantityOrdered) DESC LIMIT 1
);

-- EJERCICIO 6
SELECT c.*
FROM customers c LEFT JOIN payments p ON c.customerNumber=p.customerNumber
WHERE p.paymentDate IS NULL;

SELECT c.*
FROM customers c 
WHERE c.customerNumber NOT IN(
	SELECT p.customerNumber
	FROM payments p
);

-- EJERCICIO 7(No le salio a nadie en el examen)
SELECT c.customerNumber,c.customerName, SUM(od.quantityOrdered*od.priceEach)
FROM orderdetails od JOIN o.orders ON od.orderNumber=o.orderNumber
WHERE o.customerNumber NOT IN(
	SELECT 
);

-- EJERCICIO 8
SELECT DISTINCT c.*
FROM customers c JOIN orders o ON c.customerNumber=o.customerNumber
JOIN orderdetails od ON o.orderNumber=od.orderNumber
JOIN products p ON od.productCode=p.productCode
WHERE p.productLine="Ships";

-- EJERCICIO 9
SELECT c.*, SUM(p.amount)
FROM customers c JOIN payments p ON c.customerNumber=p.customerNumber
GROUP BY c.customerNumber
HAVING SUM(p.amount) < (
	SELECT AVG(p.amount) FROM payments p
);

-- EJERCICIO 10
SELECT p.* 
FROM payments p JOIN customers c ON p.customerNumber=c.customerNumber
JOIN employees e ON c.salesRepEmployeeNumber=e.employeeNumber
JOIN offices off ON e.officeCode=off.officeCode
WHERE off.city="NYC";