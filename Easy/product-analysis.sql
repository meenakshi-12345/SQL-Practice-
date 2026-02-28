-- Problem: Product Analysis
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Retrieve product_name, year, and price for each sale.
-- Results should be ordered by year.

SELECT 
    p.product_name,
    s.year,
    s.price
FROM Product p
JOIN Sales s 
    ON p.product_id = s.product_id
ORDER BY s.year;