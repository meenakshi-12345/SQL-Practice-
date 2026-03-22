-- Problem: Group Sold Products By The Date
-- Platform: SQL Practice / LeetCode
-- Difficulty: Easy
-- Description:
-- For each date, find:
-- 1. The number of different products sold
-- 2. A comma-separated list of unique products sorted lexicographically

SELECT 
    sell_date, 
    COUNT(DISTINCT product) AS num_sold, 
    STRING_AGG(DISTINCT product, ',' ORDER BY product) AS products
FROM Activities 
GROUP BY sell_date
ORDER BY sell_date;