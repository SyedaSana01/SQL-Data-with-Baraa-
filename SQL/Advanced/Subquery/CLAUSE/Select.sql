-- B. SELECT 

/*
Show the product IDs , names  , prices  and total number of orders */
-- MAIN QUERY
SELECT
ProductID,
Product,
Price,
--Sub Query
(SELECT COUNT(*) FROM Sales.Products) as TotalOrders
from sales.products






