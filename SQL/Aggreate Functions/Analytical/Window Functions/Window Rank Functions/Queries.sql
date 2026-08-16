-- Rank queries

-- Find the top highest sales for each product 
SELECT *
FROM 
(
SELECT 
OrderID,
ProductID,
Sales,
DENSE_RANK() OVER(PARTITION BY ProductID ORDER BY Sales DESC) RankB 
FROM Sales.Orders
)t
WHERE RankB = 1

-- Find the lowest 2 customers based on their total sales 
SELECT *
FROM (
SELECT
CustomerID,
SUM(Sales) TotalSales,
ROW_Number ()OVER(ORDER BY SUM(Sales) ) As Ranks
FROM Sales.Orders
GROUP BY CustomerID
)t
WHERE Ranks = 1 OR Ranks = 2




