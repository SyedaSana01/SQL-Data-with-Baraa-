-- DATE CALCULATIONS

USE SalesDB
--DATEADD()

-- on year 
SELECT OrderID,
OrderDate,
DATEADD(year,2,OrderDate) as [2years later]
FROM Sales.Orders

--on month
SELECT OrderID,
OrderDate,
DATEADD(month,-4 ,OrderDate) as [4 months earlier]
FROM Sales.Orders

--on date 
SELECT OrderID,
OrderDate,
DATEADD(day,12,OrderDate) as [12 days later]
FROM Sales.Orders

--DATEDIFF()

--Calculate the age of employees
SELECT BirthDate,
DATEDiff(year,Birthdate,Getdate()) as age
from Sales.Employees

-- Find out the shipping duration in days
select * from Sales.orders
SELECT OrderDate,ShipDate,
DATEDIFF(day,OrderDate,Shipdate)as ship_date
from Sales.Orders

-- Find out the Average shipping duration for each month
SELECT 
Month(OrderDate) as orderDate,
AVG(DATEDIFF(day,OrderDate,Shipdate))as ship_date
from Sales.Orders
GROUP BY MONTH(OrderDate)

-- Find the number of days between each order and previoud order
SELECT 
OrderID, 
OrderDate CurrentOrderDate,
LAG(OrderDate) OVER (Order BY OrderDate) PreviousOrderDate,
DateDIFF(day,LAG(OrderDate) OVER (Order BY OrderDate),OrderDate) AS NewDate
FROM Sales.Orders

