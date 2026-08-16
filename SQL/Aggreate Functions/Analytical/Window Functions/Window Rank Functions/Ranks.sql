-- Ranking Window FUNCTIONS

-- 1. ROW Functions
-- Rank the order based on their sales from the highest to lowest 
SELECT
OrderID, 
Sales, 
ProductID, 
ROW_NUMBER()OVER(ORDER BY Sales DESC) rowRank
FROM Sales.Orders

-- 2. Rank Functions
-- Rank the order based on their sales from the highest to lowest 
SELECT
OrderID, 
Sales, 
ProductID, 
Rank()OVER(ORDER BY Sales DESC) rowRank
FROM Sales.Orders

--3. Dense Rank
-- Dense_Rank the order based on their sales from the highest to lowest 
SELECT
OrderID, 
Sales, 
ProductID, 
DENSE_Rank()OVER(ORDER BY Sales DESC) rowRank
FROM Sales.Orders

-- NTILE
SELECT 
OrderID, 
Sales,
NTILE(2)OVER(ORDER BY Sales DESC) AS Ntilefunc
FROM Sales.Orders
