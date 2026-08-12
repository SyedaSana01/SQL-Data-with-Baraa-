--Format 
USE SalesDB

-- Format Date
SELECT 
OrderID,CreationTime,
FORMAT(CreationTime,'dd') dd,
FORMAT(CreationTime,'ddd') ddd,
FORMAT(CreationTime,'dddd') dddd
from Sales.Orders


--Format Month
SELECT CreationTime,
FORMAT(CreationTime,'MM') mm,
FORMAT(CreationTime,'MMM') mmm,
FORMAT(CreationTime,'MMMM') mmmm
FROM Sales.Orders

--Format Year
SELECT CreationTime,
FORMAT(CreationTime,'yy') yy,
FORMAT(CreationTime,'yyy') yyy,
FORMAT(CreationTime,'yyyy') yyyy
FROM Sales.Orders
