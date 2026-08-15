USE SalesDB
-- Analytical Functions

-- Window Basics

-- Find the total Sales across all orders

SELECT 
SUM(Sales) totalSales
FROM Sales.Orders

-- Find the total sales for each product
SELECT ProductID,
SUM(Sales)as Total_Sales
FROM Sales.Orders
GROUP BY ProductID

/* WINDOW FUNCTION
Find the total sales of each product 
Additionally provide details such as order id , order date
*/

SELECT OrderID, OrderDate,ProductID,
SUM(Sales)OVER(PARTITION BY ProductID)
FROM Sales.Orders
