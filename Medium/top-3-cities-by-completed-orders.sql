-- Problem: Top 3 Cities by Completed Orders
-- Platform: DataLemur
-- Difficulty: Easy
-- Description:
-- Retrieve the top 3 cities with the highest number of completed orders.
-- Results should be sorted in descending order of total completed orders.

SELECT u.city,
       COUNT(t.status) AS total_orders
FROM users u
JOIN trades t
     ON u.user_id = t.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;
