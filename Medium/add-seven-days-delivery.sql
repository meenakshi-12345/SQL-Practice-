-- Problem: Add 7 Days to Delivery Date
-- Difficulty: Easy
-- Description:
-- Display all orders along with a new delivery date
-- extended by 7 days.

SELECT 
    *,
    DATEADD(day, 7, delivery_date) AS updated_delivery_date
FROM orders;