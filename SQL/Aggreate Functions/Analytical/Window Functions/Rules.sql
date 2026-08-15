-- RULES OF WINDOW Function 

-- 3. Executed After where clause
/* Find the total sales for each order status , 
only for two products 101 and 102 */

SELECT Sales, OrderID,ProductID,
SUM(Sales) OVER(PARTITION BY OrderStatus) total_sales
FROM Sales.Orders
WHERE ProductID IN (101,102)

-- 4. USED WITH GROUP BY if the col's are same
-- Rank the customers based on their total sales
SELECT CustomerID,
SUM(Sales) total_Sales ,
RANK()OVER(ORDER BY SUM(Sales)DESC ) RankCustomer
FROM Sales.Orders
GROUP BY CustomerID

