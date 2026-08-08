-- LIKE OPERATOR 

-- 1. Find all the customers whose names starts with M 
SELECT first_name
FROM customers
WHERE first_name LIKE 'M%'

-- 2. Find all the customers whose names ends with N
SELECT first_name
FROM customers
WHERE first_name LIKE '%N'

-- 3. Find all the customers whose names containss R
SELECT first_name 
FROM customers
WHERE first_name LIKE '%R%'

-- 4. Find all the customers whose names containss R in 3rd pos
SELECT first_name
FROM customers
WHERE first_name LIKE '__R%'

