--ADVANCED JOIN

select * from customers;
select * from orders;

-- LEFT ANTI JOIN
--GET all customers who haven't placed any order

SELECT 
c.id,
c.first_name,
o.customer_id
FROM customers as c
LEFT JOIN orders as o
ON c.id=o.customer_id
WHERE o.customer_id IS NULL

--RIGHT ANTI JOIN
-- GET all orders without matching customers
	SELECT 
	c.id,
	c.first_name,
	o.customer_id
	FROM customers as c 
	RIGHT JOIN orders as o
	ON c.id=o.customer_id
	WHERE c.id IS NULL

	--RIGHT ANTI JOIN using LEFT JOIN 
	SELECT * 
	FROM orders as o
	LEFT JOIN customers as c
	ON c.id=o.customer_id
	WHERE c.id is NULL

	--FULL ANTI JOIN 
	-- Find customers without orders and orders without customers
	SELECT *
	FROM customers as c
	FULL JOIN orders as o
	ON c.id=o.customer_id
	WHERE 
	c.id IS NULL 
	OR 
	o.customer_id IS NULL