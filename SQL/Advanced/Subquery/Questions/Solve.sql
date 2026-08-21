-- Scalar Subquery 
-- 1. Find all customers whose Score is greater than the average score of all customers.
USE SalesDB
SELECT CustomerID,
Score, 
FirstName
FROM Sales.Customers
WHERE Score > (SELECT AVG(Score)AvgScore FROM Sales.Customers) 

-- WHERE + IN 
-- 2.Find all customers who have placed at least one order.
SELECT CustomerID, 
FirstName
FROM Sales.Customers 
WHERE CustomerID IN (SELECT CustomerID FROM Sales.Orders )

-- FROM 
-- 3.Find the customer(s) who have the highest total sales from Sales.Orders.
SELECT *
FROM
(
SELECT CustomerID,
SUM(Sales) as totalSales
FROM Sales.Orders
GROUP BY CustomerID
)t
WHERE totalSales = (SELECT MAX(totalSales)
FROM 
(
 SELECT CustomerID,
 SUM(Sales) AS TotalSales
 FROM Sales.Orders
 GROUP BY CustomerID
 )AS x
 );

--4 . Find the customer(s) who placed the most orders.
SELECT *
FROM 
(
SELECT CustomerID,
COUNT(*) as TotalOrders
FROM Sales.Orders
GROUP BY CustomerID
)t
WHERE TotalOrders =
(
select MAX(TotalOrders)
FROM 
(
SELECT CustomerID,
COUNT(*) as TotalOrders
FROM Sales.Orders
GROUP BY CustomerID
) AS X
);

-- JOINS Subquery
-- 5.Find all customers who have placed at least one order with Sales greater than 50.
SELECT 
c.CustomerID,
FirstName
FROM Sales.Customers c
LEFT JOIN 
(
SELECT CustomerID,
Sales
FROM Sales.Orders 
WHERE Sales > 50 
) o 
ON 
c.CustomerID = o.CustomerID







