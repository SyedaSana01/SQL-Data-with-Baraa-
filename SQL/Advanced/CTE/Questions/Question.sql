-- Find customers who have placed more orders than the average number of orders per customer.

WITH CTE_Total_Sales AS
(
SELECT CustomerID,
AVG(Sales) TotalSales
FROM Sales.Orders
GROUP BY CustomerID
),

CTE_Total_orders AS
(
SELECT CustomerID,
TotalSales
FROM CTE_Total_Sales
WHERE TotalSales > (
SELECT 
AVG(TotalSales)
FROM CTE_Total_Sales
)

SELECT
c.CustomerID,
FirstName,
cte.CustomerID
FROM Sales.Customers c
LEFT JOIN CTE_Total_Orders as cte 
ON 
c.CustomerID= cte.CustomerID
