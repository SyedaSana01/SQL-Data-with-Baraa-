IF OBJECT_ID ('V_Monthly_Summary', 'V') IS NOT NULL 
DROP VIEW Sales.V_Monthly_Summary;
GO

CREATE VIEW Sales. V_Monthly_Summary AS
(
SELECT 
	DATETRUNC(Month ,OrderDate) OrderMonth,
	SUM(Sales) TotalSales,
	COUNT(OrderID)TotalOrders,
	SUM(Quantity)TotalQuantity
	FROM Sales.Orders
GROUP BY DATETRUNC(Month ,OrderDate)
)