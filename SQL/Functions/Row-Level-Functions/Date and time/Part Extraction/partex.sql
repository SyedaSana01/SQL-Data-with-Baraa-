-- DATE AND TIME EXTRACTION
USE SalesDB
-- PART EXTRACTION

--1.EXTRACT a, DAY,b. Month , c. Year from date
SELECT 
OrderDate, 
Day(OrderDate)Day,
Month(OrderDate)Month,
Year(OrderDate)Year
FROM Sales.Orders

--DATEPART()
SELECT CreationTime,
Datepart(year,CreationTime) year_dp,
Datepart(week,CreationTime) week_dp,
Datepart(quarter,CreationTime) quarter_dp,
Datepart(hour,CreationTime) year_dp,
Datepart(weekday,CreationTime)Weekday_dp
FROM Sales.Orders

-- Date Name()
SELECT CreationTime,
DATENAME(month,CreationTime) month_dn,
DATENAME(Week,CreationTime) Week_dn,
DATENAME(Weekday,CreationTime) Weekday_dn,
DATENAME(year,CreationTime) year_dn
FROM Sales.Orders

--Date Trunc()
SELECT CreationTime,

DATETRUNC(minute,CreationTime) minute_dt,
DATETRUNC(hour,CreationTime) hour_dt,
DATETRUNC(month,CreationTime) month_dt
FROM Sales.Orders

-- Aggregate the data
SELECT CreationTime,
COUNT(*)
FROM Sales.Orders
GROUP BY CreationTime

-- Aggregate the data by month 
SELECT
DATETRUNC(month,CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(month,CreationTime)

-- Aggregate the data by year
SELECT
DATETRUNC(year,CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(year,CreationTime)


--EOMONTH
SELECT CreationTime,
EOMONTH(CreationTime) month_em
FROM Sales.Orders


--Aggregate the data 
SELECT 
EOMONTH(CreationTime) month_emm,
COUNT(*)
FROM Sales.Orders
Group By EOMONTH(CreationTime)

--Getting firstday of the month
SELECT 
CAST(DATETRUNC(month,CreationTime) AS DATE )first_month
FROM Sales.Orders

