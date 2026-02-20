-- Problem: Customer with the Most Orders
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- Retrieve the customer_number of the customer
-- who has placed the highest number of orders.

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;