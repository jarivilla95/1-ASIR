-- Examen Recuperación 2ª Evaluación

-- EJERCICIO 1
SELECT c.*, pl.productLine 'LineaDeProducto' ,COUNT(pl.productLine) 'NumeroDePedidos'
FROM customers c JOIN orders o ON c.customerNumber=o.customerNumber
JOIN orderdetails od ON o.orderNumber=od.orderNumber
JOIN products p ON od.productCode=p.productCode
JOIN productlines pl ON p.productLine=pl.productLine
WHERE pl.productLine!="Ships"
GROUP BY pl.productLine ;



-- EJERCICIO 2
SELECT c.* 
FROM customers c JOIN payments p
ON c.customerNumber=p.customerNumber
WHERE ;

-- EJERCICIO 3
SELECT o.*, off.city
FROM orders o JOIN customers c ON o.customerNumber=c.customerNumber
JOIN employees e ON c.salesRepEmployeeNumber=e.employeeNumber
JOIN offices off ON e.officeCode=off.officeCode
WHERE off.city='Paris';

-- EJERCICIO 4

SELECT SUM(od.priceEach*od.quantityOrdered) 'TotalPedidos' 
FROM orderdetails od JOIN orders o ON od.orderNumber=o.orderNumber
JOIN customers c ON o.customerNumber=c.customerNumber
WHERE c.customerName="La Rochelle Gifts";

-- EJERCICIO 5

-- EJERCICIO 6

SELECT c.*,COUNT(o.orderNumber)
FROM customers c JOIN orders o ON c.customerNumber=o.customerNumber
WHERE o.orderNumber BETWEEN 5 AND 10;