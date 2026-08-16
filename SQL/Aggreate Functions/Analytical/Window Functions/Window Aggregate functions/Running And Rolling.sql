-- RUNNING AND ROlling Total 


-- Calculate the moving average of sales for each product over time
SELECT 
OrderID,OrderDate,
ProductID,
Sales,
AVG(Sales) OVER (PARTITION BY ProductID Order BY OrderDate ) as avg_Sales
FROM 
Sales.Orders

/*Calculate the moving average of sales for each product over time
including only the next order */
SELECT 
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) OVER (PARTITION BY ProductID Order BY OrderDate 
ROWS BETWEEN Current ROW AND 1 FOLLOWING) AS nextOrder
FROM Sales.Orders 



