-- Multiple stand alone cte

-- Find the last order date for each customer
-- CTE
WITH CTE_Total_Sales AS
(
SELECT 
CustomerID,
SUM(Sales) as TotalSales
FROM Sales.Orders 
GROUP BY CustomerID
)
-- CTE 2 , 
, CTE_Last_Order AS 
(
SELECT 
CustomerID,
MAX(OrderDate) AS Last_Order
FROM Sales.Orders
GROUP BY CustomerID
)
-- Main Query 
SELECT 
c.CustomerID,
c.FirstName,
c.LastName, 
cts. TotalSales,
clo.Last_Order
FROM Sales.Customers c 
LEFT JOIN CTE_Total_Sales cts
ON 
c.CustomerID = cts.CustomerID
LEFT JOIN CTE_Last_Order clo
ON clo.CustomerID = c.CustomerID