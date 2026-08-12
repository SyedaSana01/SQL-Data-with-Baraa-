--Show CreationTime Using the following Format
--Day Wed Jan Q1 2025 12:34:56 PM 

SELECT 
OrderID, 
CreationTime,
'Day ' + FORMAT(CreationTime,'ddd '+'MMM')
 + ' Q1 ' + FORMAT(CreationTime,'yyyy ' + 'hh:MM:ss ' + 'tt')
FROM Sales.Orders


-- DATA AGGREGATION
SELECT 
FORMAT(OrderDate,'MMM yy')OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')




