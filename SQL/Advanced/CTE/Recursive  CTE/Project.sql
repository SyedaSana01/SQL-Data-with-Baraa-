-- Project 
-- Step 1 . Select total orders for each customer 
WITH CTE_Total_Sales AS
(
SELECT 
CustomerID,
SUM(Sales) TotalSales
FROM Sales.Orders
Group by CustomerID
)

-- STEP 2. Find the last order date of the customer
, CTE_Last_Orders AS
(
SELECT 
CustomerID,
MAX(OrderDate) as Last_Order
FROM Sales.Orders
GROUP BY CustomerID
)
-- Step 3  Rank the customers based on total sales per customer
,CTE_Customer_Rank AS 
(
SELECT CustomerID,
TotalSales,
RANK()OVER(Order BY TotalSales DESC) as CustomerRank
FROM CTE_Total_Sales 
)


-- MAIN QUERY 
SELECT 
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
clo.Last_Order
FROM Sales.Customers c
LEFT Join 
CTE_Total_Sales cts 
ON 
c.CustomerID = cts.CustomerID
LEFT JOIN 
CTE_LAST_Orders clo 
ON 
c.CustomerID= clo.CustomerID
LEFT JOIN 
CTE_Customer_Rank cr 
ON 
cr.CustomerID= c.CustomerID