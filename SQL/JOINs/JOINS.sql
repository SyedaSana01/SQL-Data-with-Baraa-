-- FULL JOIN 
SELECT * FROM customers as c
FULL JOIN orders as o
ON c.id=o.customer_id

-- NO JOIN 
SELECT * FROM customers;
SELECT * FROM orders;

-- INNER  JOIN
SELECT * FROM customers as c
INNER JOIN orders as o
ON c.id=o.customer_id

-- LEFT JOIN 
SELECT * FROM customers as c
LEFT JOIN orders as o
ON c.id=o.customer_id

-- RIGHT JOIN
SELECT * FROM customers as c
LEFT JOIN orders as o
ON c.id=o.customer_id

