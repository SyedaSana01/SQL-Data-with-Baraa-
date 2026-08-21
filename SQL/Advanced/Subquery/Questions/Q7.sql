-- 1.Find the customer(s) who have the highest Score in Sales.Customers.

SELECT CustomerID,FirstName, LastName,Score
FROM Sales.Customers
WHERE Score = (SELECT MAX(Score)HighestScore FROM Sales.Customers)

-- 2. Find all customers whose Score is greater than the average score of all customers.
SELECT CustomerID,FirstName, LastName,Score
FROM Sales.Customers
WHERE Score > (SELECT AVG(Score)HighestScore FROM Sales.Customers)

-- 3. Find all customers who have placed at least one order.
SELECT * FROM Sales.Customers
WHERE CustomerID IN (SELECT CustomerID from Sales.Orders)

-- 4. Find all customers who have never placed at least one order.
SELECT * FROM Sales.Customers
WHERE CustomerID NOT IN (SELECT CustomerID from Sales.Orders)

-- 5. Find all orders whose Sales amount is greater than the average Sales amount of all orders.
SELECT * FROM Sales.Orders
WHERE Sales > (SELECT AVG(Sales) as avgsales from sales.orders) 

-- 6 . Find all orders that have the highest Sales amount in the entire Sales.Orders table.
SELECT * FROM Sales.Orders
WHERE Sales = (SELECT MAX(Sales) as avgsales from sales.orders) 

-- 7. Find the average sales for each customer, using a subquery in the FROM clause.
SELECT CustomerID, AVG(Sales) as AvgSales
FROM 
(
 SELECT CustomerID,Sales FROM  Sales.Orders 
) t
GROUP BY CustomerID


