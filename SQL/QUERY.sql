Use myDatabase


SELECT 
country,
SUM(score) AS ts,
COUNT(id) AS cus
FROM customers
GROUP BY country
HAVING SUM(score)>800


