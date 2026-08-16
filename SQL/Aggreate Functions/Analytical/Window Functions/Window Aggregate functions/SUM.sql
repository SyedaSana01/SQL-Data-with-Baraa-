-- SUM 
USE SalesDB
/* Find the total sales across all orders
and the total sales for each product
Add, provide details such as order ID and order Date */
SELECT OrderID,OrderDate,
SUM(Sales) Over()as total_orders,
SUM(Sales)Over(PARTITION BY ProductID) as SUM
From Sales.Orders

-- Find the pecentage contribution of each products sales to the total sales
SELECT Sales,OrderID,ProductID,
SUM(Sales)Over()TotalSales,
ROUND(CAST(Sales AS Float ) /SUM(Sales)Over()* 100 ,2) Percentagee
FROM Sales.Orders


 -- AVG 
 /* Find the average sales across all orders
and the average sales for each product
Add, provide details such as order ID and order Date */
SELECT OrderID,ProductID,Sales,
Avg(Sales)OVER() AVGSALES,
AVG (COALESCE (Sales,0 )) OVER(PARTITION BY ProductID) as AVeragSales
FROM Sales.Orders

--# To remove nulls
/* Find the average scores of customers 
Add, provide details such as customerID, LastName*/
SELECT CustomerID,LastName,Score,
AVG(COALESCE(Score,0)) Over() Avg_Score
FROM Sales.Customers


