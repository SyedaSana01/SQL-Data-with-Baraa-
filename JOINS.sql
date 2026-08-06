 -- JOINS

 -- NO JOIN
-- 1. Retrieve all the data from cus and orders in two diff res
SELECT * FROM customers;
SELECT * FROM orders;

-- INNER JOIN
--1. Get all customers along with their orders, but only for "customers who have placed an order"
SELECT id,first_name,order_id,sales
FROM customers as c
INNER JOIN orders as o
ON c.id=o.customer_id

--LEFT JOIN
-- GET all the customers along with their orders,"including those with orders"
SELECT c.id,c.first_name,o.order_id,o.sales
FROM customers as c
LEFT JOIN orders as o
ON c.id=o.customer_id

-- RIGHT JOIN
--Get all customers along with their orders,"including orders without matching customers"
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers as c
RIGHT JOIN orders as o
ON c.id=o.customer_id

-- Get all customers along with their orders,"including orders without matching customers" USING LEFT JOIN
SELECT c.id,
c.first_name,
o.order_id,
o.sales
FROM orders as o
LEFT JOIN customers as c
ON c.id=o.customer_id


