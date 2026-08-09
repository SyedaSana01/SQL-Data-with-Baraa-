-- STRING EXTRACTION 

--LEFT extraction
-- Retrieve the first two characters of each first name
SELECT first_name,
LEFT(trim(first_name),2)as first_2_char
FROM customers

--RIGHT extraction
-- Retrieve the first two characters of each first name
SELECT first_name,
LOWER(RIGHT(first_name,'2')) as last_char
FROM customers

--SUBSTRING
--Retreive a list of customers first names removing the first character
SELECT 
first_name ,
SUBSTRING(TRIM(first_name),2,len(first_name))
from customers