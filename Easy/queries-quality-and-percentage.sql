-- Problem: Queries Quality and Percentage
-- Platform: LeetCode
-- Difficulty: Medium
-- Description:
-- For each query_name, calculate:
-- 1. Quality = average of (rating / position)
-- 2. Poor query percentage = percentage of queries with rating < 3

SELECT 
    query_name, 
    ROUND(AVG(rating / CAST(position AS DECIMAL)), 2) AS quality,
    ROUND(
        SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS poor_query_percentage
FROM Queries
GROUP BY query_name;