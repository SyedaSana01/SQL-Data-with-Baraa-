
-- Window Value Functions

-- 1.Month - over - Month Analysis 
/*Analyze the MOM performance by finding percentage changes in sales
between the current and previous month */
SELECT *,
CurrentSales - PrevMonth AS Mom_Change,
ROUND(CAST((CurrentSales-PrevMonth ) as Float)/PrevMonth *100 ,1) MoM_Per
FROM
(
SELECT 
Month(OrderDate) OrderMonth,
SUM(Sales) CurrentSales,
LAG(SUM(Sales)) OVER(ORDER BY Month(OrderDate)) as PrevMonth
FROM Sales.Orders
GROUP BY
Month(OrderDate)
)t

-- 2.Customer Retention Analysis 
/* In order to analyze customer loyalty, 
rank customers based on the average days between their orders */
SELECT CustomerID,
AVG (DaysUntilNextOrder	) AvgDays,
Rank()OVER(ORDER BY COALESCE(AVG(DaysUntilNextOrder),9999)) RankAVG
FROM
(
SELECT 
OrderID,
CustomerID,
OrderDate CurrentOrder,
LEAD(OrderDate)OVER(PARTITION BY CustomerID Order BY OrderDate) NextOrder,
DATEDIFF(day,OrderDate,LEAD(OrderDate)OVER(PARTITION BY CustomerID Order BY OrderDate)) DaysUntilNextOrder
FROM Sales.Orders
)t
GROUP BY CustomerID






