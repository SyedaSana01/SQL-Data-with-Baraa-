-- DEPENDENCY 

-- Show all customer details and find the total orders of each customer
SELECT *, 
(SELECT COUNT(*) FROM Sales.orders o 
WHERE o.CustomerID=o.CustomerID) FROM Sales.customers


-- JOINS
SELECT c.*,
TotalOrders
FROM Sales.customers c
LEFT JOIN 
(
SELECT CustomerID,
Count(*) AS TotalOrders
FROM Sales.orders
GROUP BY CustomerID
)
o
ON 
c.CustomerID= o.CustomerID







