-- NULL FUNCTIONS 
USE SalesDB

--ISNULL
-- Find the Average Scores for the customers
SELECT CustomerID,
Score,
AVG(Score) Over() AVGScore,
AVG(ISNULL(Score,0)) Over () Avgscore2
from Sales.Customers

-- COALESCE
SELECT CustomerID,
Score,
AVG(Score) Over() AVGScore,
AVG(COALESCE(Score,0)) Over () Avgscore2
from Sales.Customers

