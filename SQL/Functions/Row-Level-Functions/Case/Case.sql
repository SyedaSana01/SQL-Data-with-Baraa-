-- CASE 
USE SalesDB
/* Create a report showing total sales for each categories
High (sales>50),
Medium(sale 21-50),
Low(sales 20 or less)
Sort the categories from highest to lowest */

SELECT Category,
SUM(Sales) as TotalSales
FROM(
	SELECT OrderID,
	Sales,
	CASE 
		WHEN Sales >50 THEN 'High'
		WHEN Sales > 20 THEN 'Medium'
		ELSE 'Low'
	END Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC

--MAPPING VALUES

--Retrieve Employee details with gender displayed aas full text 
SELECT FirstName,
Gender,
CASE 
	WHEN Gender = 'M' THEN 'Male'
	ELSE 'Female'
END Complete_Gender
FROM Sales.Employees

-- Retrieve Employee details with abbreviated country code

SELECT Country, 
CASE 
	WHEN Country = 'Germany' THEN 'DE'
	WHEN Country = 'USA' THEN 'US'
	ELSE 'na'
END CountryAbb
FROM Sales.Customers

--Quick Mapping

SELECT Country, 
CASE Country
	WHEN 'Germany' THEN 'DE'
	WHEN 'USA' THEN 'US'
	ELSE 'na'
END CountryAbb
FROM Sales.Customers

-- Find the AVG Scores of Customers and treat Nulls as 0 
SELECT CustomerID,
LastName,
Score,
CASE 
	WHEN Score IS NULL Then 0 
	ELSE Score
END AS ScoreClean,

AVG(CASE 
		WHEN Score IS NULL Then 0 
		ELSE Score
END ) OVER () AvgScoreees,

AVG(Score) OVER()AvgScore
FROM Sales.Customers

-- Conditional Aggregation 
-- Count how many times each customer has made an order with sales greater than 30 

SELECT  * from Sales.Orders

 SELECT 
 CustomerID,
 SUM(CASE
	WHEN Sales > 30 THEN  1	
	ELSE 0
END )TotalCount,
COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID


