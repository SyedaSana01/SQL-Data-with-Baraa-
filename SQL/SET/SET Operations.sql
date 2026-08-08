USE SalesDB

SELECT * FROM Sales.Customers
Select * from Sales.Employees

-- UNION 

--Combine all the data from emp and cus into one table 

SELECT
FirstName,
LastName
FROM Sales.Customers

UNION

SELECT 
FirstName,
LastName
FROM Sales.Employees


--UNION ALL 

--Combine all the data from emp and cus into one table including duplicates
SELECT FirstName,
LastName
From Sales.Employees

UNION ALL 

SELECT FirstName,
LastName
From Sales.Customers

-- EXCEPT 

-- Find employees who are not customers at the same time
SELECT 
FirstName,
LastName 
FROM Sales.Employees

EXCEPT 

SELECT 
FirstName,
LastName 
FROM Sales.Customers

--INTERSECT 
-- Find employees, who arecustomers at the same time

SELECT 
FirstName,
LastName 
FROM Sales.Employees

INTERSECT 

SELECT 
FirstName,
LastName 
FROM Sales.Customers








