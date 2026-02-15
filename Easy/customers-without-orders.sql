-- Problem: Customers Who Never Ordered
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Retrieve the names of customers who have never placed any order.

SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT c.id
    FROM Customers c
    JOIN Orders o
        ON c.id = o.customerID
);
