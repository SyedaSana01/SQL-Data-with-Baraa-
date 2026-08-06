
SELECT country,
AVG(score) AS avg_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430

--Return Unique list of all countries 
SELECT 
DISTINCT 
	country 
FROM customers

--Retrieve only 3 customers
SELECT TOP 3 *
FROM Customers

--Retrieve TOP 3 Customers with the Highest Scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC

--Retrieve the Lowest 2 Customers based on the Score

SELECT TOP 2*
FROM customers
ORDER BY score ASC
*/

--Get the TWO MOST RECENT ORDERS

SELECT TOP 2* FROM orders
ORDER BY order_date DESC