--TASK : Show the emp hierarachy by displaying each employees within the organization

-- Anchor Query
WITH CTE_Emp_Hierarchy AS
(
SELECT 
EmployeeID,
FirstName, 
ManagerID,
1 AS Level
FROM Sales.Employees 
WHERE ManagerID IS NULL 

UNION ALL 

SELECT 
e.EmployeeID,
e.FirstName, 
e.ManagerID,
Level +1
FROM Sales.Employees AS e
INNER JOIN CTE_Emp_Hierarchy as cte
ON 
cte.EmployeeID = e.ManagerID

)

-- Main Query 
SELECT 
*
FROM CTE_Emp_Hierarchy 










