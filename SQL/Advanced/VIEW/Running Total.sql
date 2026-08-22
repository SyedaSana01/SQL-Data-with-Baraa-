-- VIEWS 

-- 1. Find the running total of sales for each month 

WITH CTE_Monthly_Summary AS
(
SELECT 
DATETRUNC(Month ,OrderDate) OrderMonth,
SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY DATETRUNC(Month ,OrderDate)
)
SELECT
OrderMonth,
TotalSales,
SUM(TotalSales) OVER (ORDER BY OrderMonth) as RunningTotal
FROM CTE_Monthly_Summary


