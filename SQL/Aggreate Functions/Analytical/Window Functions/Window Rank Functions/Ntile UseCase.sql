-- NTILE Function 
--1. Data Segmentation
-- Segment all orders into 3 categories high,medium, low sales 
SELECT *,
CASE
    WHEN Buckets = 1 THEN 'High'
    WHEN Buckets = 2 THEN 'Medium'
ELSE 'Low'
END SalesSegmentation
FROM 
(
    SELECT 
    OrderID,Sales,
    NTILE(3) OVER(Order BY Sales) AS Buckets
    FROM Sales.Orders 
)t 

--2. ETL / Load Balancing 
-- In order to export the data, divide the orders into 2 groups 
SELECT * FROM Sales.Orders
SELECT OrderStatus,OrderID,
NTILE(2)OVER(Order by OrderStatus) as Groups
FROM Sales.Orders



