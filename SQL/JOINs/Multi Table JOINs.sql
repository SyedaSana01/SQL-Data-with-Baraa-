--MULTI TABLE JOINS

-- USING SALESDB , RETRIEVE A LIST OF ALL ORDERS ALONG WITH THE RELATED CUSTOMER , PRODUCT, AND EMPLOYEE DETAILS 
 -- FOR EACH ORDER DISPLAY 
 --ORDER ID
 -- Customer NAME
 --PRODUCT NAME
 --SALES AMOUNT
 --PRODUCT PRICE
 --SALES PERSON'S NAME 


 SELECT o.ProductID,o.OrderID,o.Sales,
 c.FirstName AS CustomerFirstName,c.LastName AS CustomerLastName,
 p.Product AS ProductName,p.Price,
 s.FirstName AS EmployeeFirstName,s.LastName AS EmployeeLastName
 FROM Sales.Orders as o
 LEFT JOIN Sales.Customers as c ON o.CustomerID = c.CustomerID
 LEFT JOIN Sales.Products as p ON o.ProductID=p.ProductID
 LEFT JOIN Sales.Employees as s ON o.SalesPersonID=s.EmployeeID
 
 






