-- ADVANCED  LEVEL                         
-- SUBQUERY 
USE SalesDB

-- 1. Result type
-- A. SCALAR QUERY 
	SELECT 
	AVG(Sales)
	FROM Sales.Orders

-- B. ROW Query 
	SELECT CustomerID
	FROM Sales.Orders

	-- C.TABLE Query 
	SELECT * FROM Sales.Orders


