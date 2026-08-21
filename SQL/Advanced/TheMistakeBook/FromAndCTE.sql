-- FROM CLAUSE 

--1 Find the customer(s) who have the highest total sales from Sales.Orders.
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
 )AS c
 );

 --LETS SOLVE THIS USING CTE 

 WITH CTE_TotalSales AS 
(
SELECT CustomerID,
SUM(Sales) as totalSales
FROM Sales.Orders
GROUP BY CustomerID
)
, CTE_MaxSales AS
(
SELECT 
MAX(totalSales) MaxSale
FROM CTE_TotalSales 
)
SELECT 
ts.CustomerID,ts.TotalSales
FROM CTE_TotalSales as ts
JOIN CTE_MaxSales as m
ON ts.TotalSales = m.MAXSale






