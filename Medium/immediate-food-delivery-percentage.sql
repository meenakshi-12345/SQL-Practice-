-- Problem: Immediate Food Delivery II
-- Platform:  LeetCode
-- Difficulty: Medium
-- Description:
-- Find the percentage of customers whose first order was delivered
-- on their preferred delivery date. Return the result rounded to 2 decimal places.

SELECT
  ROUND(
    SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS immediate_percentage
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS rnk
    FROM Delivery
) t
WHERE rnk = 1;