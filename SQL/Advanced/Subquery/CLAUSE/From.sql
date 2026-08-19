-- 2. LOCATION / CLAUSE

-- A. FROM 
	/* 1.Find the products that have a price 
	higher than the average price of all products */
	--	MAIN Query
	SELECT
	*
	FROM
	(
		-- Subquery
		SELECT Price,ProductID,
		AVG(Price) Over() as avg_price
		FROM Sales.Products
	) t 
	WHERE Price > avg_price

	-- 2.Rank the customers based on their highest amount of sales
	SELECT * FROM Sales.Orders
	-- Main query 
	SELECT *,
	RANK() OVER (ORDER BY HighestSales DESC) CustomerRank
	FROM
	(
		-- Subquery
		SELECT CustomerID,
		SUM(Sales) HighestSales
		FROM Sales.Orders
		Group BY CustomerID
	)t

	
	
