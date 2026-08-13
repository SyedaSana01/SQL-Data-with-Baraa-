
--NULL IF 
-- Find the sales price for each order by dividing sales by quantity 

SELECT Sales,Quantity,
 Sales/NULLIF(Quantity,0) AS Price
FROM Sales.Orders

-- IS NULL 
--Identify the customers who have no scores 

SELECT *
FROM Sales.Customers 
Where Score IS NULL 

-- IS NOT NULL 
--Identify the customers who have no scores 
SELECT *
FROM Sales.Customers 
Where Score IS NOT NULL
