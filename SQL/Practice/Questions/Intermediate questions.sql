/*
Level 1 — Warm-up

1. Retrieve all customers whose Score is greater than 500.

2. Retrieve the CustomerID, FirstName, LastName, and Score of customers whose score is between 300 and 700.

3. Display all customers whose FirstName starts with the letter A.

4. Retrieve customers whose Score is NULL. Replace the NULL score with 0 and call the new column ScoreClean.

5. Display each customer's full name in a single column called FullName.



🟡 Level 2 — Functions + CASE + Aggregation

6. Display each customer's CustomerID, FirstName, Score, and a new column called ScoreCategory:

High → Score >= 700
Medium → Score between 400 and 699
Low → Score < 400
No Score → Score is NULL

7. Find the total number of customers.

8. Find the average, minimum, and maximum customer score.

9. Find the number of customers in each country.

10. Find the average score for each country, but only return countries whose average score is greater than 500.


🟠 Level 3 — JOINs

11. Display every order along with the customer's FirstName and LastName.

12. Display all customers and their orders. Include customers who have never placed an order.

13. Find the total number of orders placed by each customer.

Your output should contain:

CustomerID
FirstName
LastName
TotalOrders

14. Find customers who have placed more than 3 orders.

15. Display each order along with:

OrderID
CustomerID
CustomerName
OrderDate
🔴 Level 4 — Window Functions

16. Display every customer along with the average score of all customers.

Expected idea:

CustomerID | FirstName | Score | AvgScore

17. Display each customer along with the average score of their country.

18. Rank customers based on their Score, with the highest score receiving rank 1.

Use RANK().

19. Assign a unique row number to every customer ordered by their score from highest to lowest.

Use ROW_NUMBER().

20. For every customer, display their total number of orders without using GROUP BY.

Use:

COUNT(*) OVER(PARTITION BY ...)

🔥 Challenge Questions

Don't look at the solution immediately for these.

21. Find the top 3 customers with the highest number of orders.

Return:

CustomerID
FirstName
LastName
TotalOrders
Rank

22. For every customer, display their score and the average score of all customers, then create:

Above Average
Below Average

using CASE.

23. Find the highest-scoring customer in each country.

24. Find customers whose score is higher than the average score of their country.

25. Display every customer with:

CustomerID
FullName
Country
Score
TotalOrders
CountryAverageScore
CountryRank

You'll need to combine JOIN + CASE/functions + aggregate/window functions.

*/