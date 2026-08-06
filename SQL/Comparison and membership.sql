--COMPARISON OPERATORS

-- '=='
 SELECT * FROM customers where country='USA'

 --Retrieve all customers who are not from germany
 SELECT * FROM customers where country !='Germany'

 -- Retrieve all customers with a score greater than 500 
 SELECT * from customers where score >500

-- Retrieve all customers greater or to  500 
SELECT *FROM customers where score >=500

--Retrieve all customer less than 500 
SELECT * FROM customers where score<500

-- Retrieve all customers less than or equal to 500
SELECT *FROM customers where score <=500


-- MEMEBERSHIP OPERATORS 

-- Retrieve customer in either Germany or usa 
SELECT * FROM customers where country  IN ('GERMANY' , 'USA')

-- retrieve all the customer not in Germany or usa 
SELECT * FROM customers where country  NOT IN ('GERMANY' , 'USA')

