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






