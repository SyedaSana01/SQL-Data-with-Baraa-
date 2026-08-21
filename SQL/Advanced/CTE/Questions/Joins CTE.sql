-- CTE USING JOINS
/* 1. Using Sales.Orders and Sales.Customers:
Create a CTE that calculates the total sales for each customer.
Then join that CTE with Sales.Customers and display:*/

WITH CTE_TotalSales AS
(
SELECT CustomerID,
SUM(Sales) as ts
FROM Sales.Orders
GROUP BY CustomerID
)

SELECT 
c.CustomerID, 
c.FirstName,
cte.ts
FROM Sales.Customers as c
LEFT JOIN 
CTE_TotalSales cte
ON 
cte.CustomerID = c.CustomerID

/* 2. Using Sales.Orders:
Create a CTE that calculates total sales for each customer.
Then return only customers whose TotalSales is greater than 10.*/
WITH CTE_Total_Sales AS 
(
SELECT 
CustomerID,
SUM(SALES) ts
from Sales.Orders
GROUP BY CustomerID
)

SELECT 
c.CustomerID, 
c.FirstName,
cte.ts
FROM Sales.Customers as c
LEFT JOIN 
CTE_Total_Sales cte
ON 
cte.CustomerID = c.CustomerID
WHERE ts >110

/* 3. Using Sales.Orders, find the latest order placed by each customer.*/
WITH  CTE_Latest as
(
SELECT CustomerID,
MAX(OrderDate) as LatestOrderDate
FROM Sales.Orders
GROUP BY CustomerID
)
SELECT 
c.CustomerID, 
c.FirstName,
cte.LatestOrderDate
FROM Sales.Customers as c
LEFT JOIN 
CTE_Latest cte
ON 
cte.CustomerID = c.CustomerID


