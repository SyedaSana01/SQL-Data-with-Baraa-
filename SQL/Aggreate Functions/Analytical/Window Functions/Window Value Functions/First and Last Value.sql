-- First Value and last value 
-- 1. Find the highest and lowest sales for each product 
SELECT OrderID, ProductID,Sales, 
First_Value(Sales)Over (PARTITION BY ProductID ORDER BY Sales )lowestSales,
Last_Value(Sales)Over (PARTITION BY ProductID ORDER BY Sales 
ROWS BETWEEN Current Row AND Unbounded Following) highestSales
FROM Sales.Orders

-- Find the difference between the current and the lowest sale
SELECT *,
Sales - MinSales as Diff
FROM 
(
SELECT OrderID, ProductID,Sales,
MIN(Sales) OVER (Partition BY ProductID)as MinSales
FROM Sales.Orders
)t
