--LOGICAL OPERATORS 


-- retrieve all the cus who are from usa and have a score greater than 500
SELECT * FROM customers 
where country ='USA' AND score>500

--retrieve all the cus who are either from usa or have a score greater than 500

SELECT * FROM customers 
where country ='USA' OR score>500

-- retrieve all the cus with a score NOT less than 500
SELECT * FROM customers 
where   NOT score < 500 

-- RANGE 
-- retrieve all the cus between 100 and 500 

SELECT * FROM customers
WHERE score BETWEEN 100 AND 500 
   --OR 
 SELECT * FROM customers 
 WHERE score<=100 AND score>=500 

