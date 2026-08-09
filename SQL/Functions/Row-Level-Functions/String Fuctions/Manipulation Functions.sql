USE myDatabase

-- ROW-LEVEL FUNCTIONS 
-- Manipulation functions
select * from Sales.customers

-- 1. CONCAT 
-- Show a 'list of customers' with there country in one column 

SELECT 
FirstName,
LastName,
Country,
CONCAT (FirstName,'-',LastName,'-',Country) AS name_country
FROM Sales.Customers

--2. LOWER CASE
--TRANSFORM THE CUSTOMERS FIRST NAME TO LOWER CASE
SELECT FirstName ,LastName,
LOWER(FirstName) AS lower_first_name
FROM Sales.Customers

--3.Upper Case
--TRANSFORM THE CUSTOMERS FIRST NAME TO LOWER CASE
SELECT FirstName ,LastName,
LOWER(FirstName) AS upper_first_name
FROM Sales.Customers

--4. TRIM 
--Find the customers data whose first name contains leading or trailing spaces
SELECT first_name 
FROM customers
WHERE TRIM(first_name)!=first_name

-- 5. LEN
-- Find the customers data whose first name contains leading or trailing spaces (USING LEN AND TRIM)
SELECT first_name,
LEN(first_name),
LEN(TRIM(first_name)) len_trim_first_name,
LEN(first_name) - LEN(TRIM(first_name)) flag
FROM customers
WHERE LEN(first_name)!=LEN(TRIM(first_name))

--