-- Problem: Find Orders with Delivery Time Greater Than 4 Days
-- Difficulty: Easy-Medium
-- Description:
-- Retrieve orders where the delivery took
-- more than 4 days.

SELECT 
    *,
    DATEDIFF(DAY, order_date, delivery_date) AS delivery_days
FROM orders 
WHERE DATEDIFF(DAY, order_date, delivery_date) > 4;