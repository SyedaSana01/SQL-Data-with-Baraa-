-- CALCULATION 
Use myDatabase

SELECT  *
FROM customers
-- LEN 
--Calculate the len the length of each customers first name
SELECT first_name,
LEN(first_name) AS length_name
FROM customers
