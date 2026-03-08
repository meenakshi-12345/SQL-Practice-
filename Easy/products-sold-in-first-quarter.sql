-- Problem: Products Sold in the First Quarter of 2019
-- Platform: SQL Practice / LeetCode
-- Difficulty: Easy
-- Description:
-- Retrieve product_id and product_name for products that were sold
-- only between January 1, 2019 and March 31, 2019.

SELECT p.product_id, p.product_name
FROM Product p
JOIN Sales s 
    ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING 
    MIN(s.sale_date) >= '2019-01-01'
    AND MAX(s.sale_date) <= '2019-03-31';