-- WINDOW Aggregate Functions

-- 1.COUNT
-- Find The Total Number Of Orders
SELECT 
COUNT(*)as totalOrders
FROM Sales.Orders

-- Find The Total Number Of Orders additionally provide details such as orderId & productID
SELECT OrderID,ProductID,
COUNT(*) OVER()as totalOrders
FROM Sales.orders

-- Find The Total Number Of Orders For each customers
SELECT OrderID,ProductID,CustomerID,
COUNT(*) OVER(PARTITION BY CustomerID)as totalOrders
FROM Sales.orders

-- Find The Total Number Of Orders For each customers add provide all customer details
SELECT o.OrderID,o.CustomerID ,
c.LastName,c.FirstName,
COUNT(*) OVER(Partition BY o.CustomerID)as totalOrders
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON 
c.CustomerID = o.CustomerID

--Find The Total Number Of Customers For each customers add provide all customer details
SELECT *,
COUNT(*) OVER()TotalCustomers
FROM Sales.Customers

-- Find the total number of scores for the customers
SELECT
COUNT(Score)OVER () AS Total_score
FROM Sales.Customers


-- #TASK
-- Check whether the table 'Orders' contains any duplicate rows
SELECT 
Count(*)over(PARTITION BY OrderID) totalOrders
FROM Sales.Orders

SELECT *
FROM
(
SELECT OrderID,
COUNT(*)Over (PARTITION BY OrderID)CheckPK
From Sales.OrdersArchive
)t WHERE CheckPK > 1 