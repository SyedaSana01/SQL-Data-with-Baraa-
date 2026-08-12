--CONVERT

--CONVERT TO DATE 
SELECT CreationTime,
CONVERT(DATE,CreationTime) [Date]
FROM Sales.Orders

--CONVERT TO VARCHAR
SELECT CreationTime,
CONVERT(VARCHAR,CreationTime) [Date]
FROM Sales.Orders

--CONVERT TO US STANDARDS

SELECT CreationTime,
CONVERT(DATE,CreationTime, 32) [us standards]
FROM Sales.Orders

-- Convert to EURO Standards
SELECT CreationTime,
CONVERT(DATE,CreationTime , 34) [Euro Standards]
FROM Sales.Orders


--CAST
SELECT 
CAST('123' AS INT) [String to Int],
CAST(123 AS VARCHAR) [INT to STRING],
CAST('2025-08-12' AS DATE) [STRING TO DATE],
CAST('2025-08-12' AS DATETIME2) [String to DateTime]


-- CONVERT DATETIME TO DATE 
SELECT Creationtime,
CAST(CreationTime AS DATE) [Datetime to date]
FROM Sales.Orders
