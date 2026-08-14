-- Aggregate Functions
USE MyDatabase

SELECT * FROM orders
-- COUNT
--Find the total number of customers
SELECT 
COUNT(order_id)
FROM orders

--SUM 
--Find the total sales of orders
SELECT 
SUM(sales)
FROM orders

-- AVERAGE
--Find the Average sales of all orders
SELECT 
AVG(sales) FROM orders

-- MAX
-- Find the Highest sales in of aLL orders
SELECT MAX(sales)  AS high_sales From orders

-- MIN
--Find the Lowest sales in of aLL orders	
SELECT MIN(sales)  AS low_sales From orders

-- aggregation on customer table
select * from customers

SELECT score,
AVG(score) OVER () avgscore
FROM customers

Select max(score) from customers
Select min(score) from customers

SELECT Country, 
COUNT(Country)
FROM customers
Group by Country

SELECT Country,
AVG(score) 
From customers
Group by Country