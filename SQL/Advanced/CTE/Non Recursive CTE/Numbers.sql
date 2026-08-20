-- Non Recursive
-- Generate a sequence of numbers from 1 to 20 

-- Anchor Query 
WITH CTE_Series AS
(
SELECT 
1 AS MyNumber
UNION ALL 
-- Recursive Query 
SELECT 
MyNumber +1
FROM CTE_Series 
WHERE MyNumber < 20
)

-- Main Query 
SELECT * 
FROM CTE_Series