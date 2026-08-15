/* WINDOW Functions

-- PARTITION BY 

 Find the total sales across all orders additionally 
 provide details such as order id and order date*/

 SELECT orderID,orderDate,
 SUM(Sales) OVER() as total_sales
 FROM Sales.Orders

 /*Find the total sales FOR EACH PRODUCT additionally 
 provide details such as order id and order date*/
 SELECT orderID,orderDate,ProductID,
 SUM(Sales) OVER(PARTITION BY ProductID) as total_sales
 FROM Sales.Orders

 /*Find the total sales across all,
 Find the total sales FOR EACH PRODUCT additionally 
 provide details such as order id and order date*/
 SELECT orderID,orderDate,ProductID,Sales,
 SUM(Sales) OVER() Total_sales,
 SUM(Sales) OVER(PARTITION BY ProductID) as total_salesByProduct
 FROM Sales.Orders

 -- Find the total sales for each combination of product and order status
 SELECT Sales,ProductID,
 OrderStatus,
 SUM(Sales) OVER(PARTITION BY ProductID,OrderStatus) as status
 FROM Sales.Orders

