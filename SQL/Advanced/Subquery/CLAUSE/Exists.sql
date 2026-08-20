-- EXISTS 
USE SalesDB
-- Show the details of orders made by customers in Germany 

-- Main Query 
SELECT * FROM Sales.Orders as o
WHERE EXISTS (SELECT * FROM Sales.Customers as c 
							WHERE Country = 'Germany'
							AND o.CustomerID = c.CustomerID)
