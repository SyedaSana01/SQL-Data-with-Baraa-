
-- ROW_NUMBER USE CASES

-- #  1.Creating NEW ID'S using Row_Number
-- Assign Unique IDs to the rows of the 'Orders Archive' table 
SELECT OrderID,
ROW_NUMBER()OVER(ORDER BY OrderID) AS UniqueID
FROM Sales.OrdersArchive

-- 2. Identifying Duplicates
-- Identify duplicate rows in the table 'Order Archives' and return 
-- a clean result without any dublicates 
SELECT *
FROM 
(
SELECT *,
ROW_NUMBER()OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) AS UniqueID
FROM Sales.OrdersArchive
)t
WHERE UniqueID=1