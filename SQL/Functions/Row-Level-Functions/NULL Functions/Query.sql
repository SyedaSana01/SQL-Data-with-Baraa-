-- Display the full name of customers in a single field, by merging 1st and lastname and add 10 
--points to customers score

SELECT CustomerID,
FirstName,LastName,Score,
COALESCE(FirstName + LastName, FirstName,LastName)AS Customer_Name,
COALESCE(Score + 10 , 10) AS Score
FROM Sales.Customers

-- OR 
SELECT CustomerID,
FirstName,LastName,
FirstName + ' ' + COALESCE(LastName, ' ' ) AS FullName,
COALESCE(Score,0) +10 AS Scorewithbonus
From Sales.Customers

--SORT THE CUSTOMERS FROM LOWEST TO HIGHEST SCORES WITH NULLS APPEARING LAST 

-- One Method
SELECT CustomerID,
Score,
CASE WHEN Score IS NULL THEN 1 ELSE 0 END Flag
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END , Score

-- other method 
SELECT CustomerID, 
Score,
ISNULL(Score,999999) AS SCorees
FROM Sales.Customers
Order By ISNULL(Score,999999) 


--NULL IF 
-- Find the sales price for each order by dividing sales by quantity 

SELECT Sales,Quantity,
 Sales/NULLIF(Quantity,0) AS Price
FROM Sales.Orders












