-- Problem: Top Profitable Drugs
-- Platform: SQL Practice / DataLemur style
-- Difficulty: Easy
-- Description:
-- Find the top 3 drugs with the highest total profit.
-- Profit is calculated as total_sales - cogs.

SELECT 
    drug, 
    (sales - coggs) AS total_profit 
FROM (
    SELECT 
        drug, 
        SUM(total_sales) AS sales, 
        SUM(cogs) AS coggs
    FROM pharmacy_sales
    GROUP BY drug 
) t
ORDER BY total_profit DESC
LIMIT 3;