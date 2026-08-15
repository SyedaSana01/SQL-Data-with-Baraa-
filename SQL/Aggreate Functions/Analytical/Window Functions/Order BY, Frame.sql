-- WindoW Function 

-- ORDER BY 

/* Rank each order based on their sales from highest to lowest,
Add, provide details such as order id, order date*/

SELECT Sales,
orderID,ProductID,
Rank() OVER ( ORDER BY Sales DESC) as rankOrder
FROM Sales.Orders

-- FRAME 

SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (Partition BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN CURRENT row and 2 Following)total_Sales
FROM Sales.Orders

-- COMPACT FRAME 
SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (Partition BY OrderStatus ORDER BY OrderDate
ROWS 2 PRECEDING)total_Sales
FROM Sales.Orders

-- Default frame 
SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (Partition BY OrderStatus ORDER BY OrderDate)total_Sales
FROM Sales.Orders

/* Find the total sales for each order status , 
only for two products 101 and 102 */

SELECT Sales, OrderID,ProductID,
SUM(Sales) OVER(PARTITION BY OrderStatus) total_sales
FROM Sales.Orders
WHERE ProductID IN (101,102)