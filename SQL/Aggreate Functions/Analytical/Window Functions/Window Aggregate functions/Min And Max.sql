-- MIN AND MAX 

-- Find the highest and lowest sales of all orders
SELECT 
OrderID,
ProductID,
Sales,
MIN(Sales) OVER () MinSale,
MAX(Sales) Over()MaxSale
FROM Sales.Orders

--Find the highest and lowest sales for each Product 
SELECT 
OrderID,
ProductID,
Sales,
MIN(Sales) OVER (PARTITION BY ProductID) MinSale,
MAX(Sales) Over(PARTITION BY ProductID)MaxSale
FROM Sales.Orders

-- Show Employees with the highest salaries
SELECT * FROM Sales.Employees
SELECT *
FROM 
(
SELECT
EmployeeID,
FirstName,
LastName,
Salary,
MAX(Salary) OVER() HighestSalary 
FROM Sales.Employees
)t
WHERE Salary = HighestSalary

-- Find the deviation of each sale from both the min and max sales amounts
SELECT 
OrderID,
ProductID,
Sales,
Min(Sales) OVER(PARTITION BY ProductID) LowSales,
Max(Sales) OVER(PARTITION BY ProductID) HighSales,
Sales - Min(Sales)OVER() DevMIN,
Max(Sales) OVER () - Sales MaxDev
FROM Sales.Orders


