/* 1.  Using Sales.Orders, create a CTE called OrderData containing:
CustomerID
Sales
Then use the CTE to find the total sales for each customer.*/
with cte_OrderData AS
(
SELECT 
CustomerID,
Sales
FROM Sales.Orders
)

SELECT CustomerID, 
SUM(Sales) as TotalSales
FROM CTE_OrderData
GROUP BY CustomerID



/* 2. Using Sales.Orders, create a CTE called OrderData containing:
OrderID
CustomerID
Sales
Then use the CTE to find only orders where Sales is greater than 1000.
*/
WITH CTE_ORDERS AS
(
SELECT OrderID,
CustomerID,
Sales
FROM Sales.Orders
)
SELECT 
CustomerID, 
Sales
FROM CTE_ORDERS
WHERE Sales > 1000

/*
3.Using Sales.Orders, create a CTE containing:
CustomerID
Sales
Then find the average sales for each customer.
*/
WITH CTE_Cust AS
(
SELECT CustomerID, 
Sales
FROM Sales.Orders
)
SELECT CustomerID,
AVG(Sales) avgSales
FROM CTE_Cust
GROUP BY CustomerID

/* Using Sales.Orders, create a CTE containing:
CustomerID
Sales
Then find customers whose average sales is greater than 1000.
*/
WITH CTE_cust AS
(
SELECT CustomerID,
Sales
FROM Sales.Orders
)
SELECT CustomerID,
AVG(Sales) avgSales
FROM CTE_cust
GROUP BY CustomerID
Having AVG(Sales) > 1000



