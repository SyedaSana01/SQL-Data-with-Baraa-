-- How many orders were placed each year 

SELECT 
YEAR(OrderDate),
COUNT(*) NoOfOrders
FROM Sales.Orders
GROUP BY Year(OrderDate)

-- How many orders were placed each year 
SELECT 
DATENAME(month,OrderDate),
COUNT(*) NoOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate)

-- Show all orders that were placed during the month of feb
SELECT 
*
FROM Sales.Orders
Where Month(OrderDate)=2
