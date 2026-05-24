-- Problem: Find Orders Placed in the Current Year
-- Difficulty: Easy
-- Description:
-- Retrieve all orders placed during the current year.

SELECT * 
FROM orders 
WHERE YEAR(order_date) = YEAR(GETDATE());