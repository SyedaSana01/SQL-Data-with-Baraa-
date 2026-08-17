-- WINDOW Value Function 

-- 1. LAG()
-- Find the previous values of product price

SELECT Product,Price,
LAG(Price) OVER(ORDER BY Price) PrevValue
FROM Sales.Products

-- 2. Lead()
 -- Find the Next values of product price
 SELECT Product,Price,
LEAD(Price) OVER(ORDER BY Price) NextValue
FROM Sales.Products


