USE SalesDB
 
 -- Date and time
 --1. FROM THE DATABASE
SELECT 
OrderID,
OrderDate,
ShipDate,
CreationTime
FROM Sales.Orders

-- HARDCODE
SELECT OrderID,
CreationTime,
'2026-09-08' Hardcore

























From Sales.Orders

-- GETDATE()
SELECT OrderID,
CreationTime,
'2026-09-08' Hardcore,
GETDATE() Today
From Sales.Orders

