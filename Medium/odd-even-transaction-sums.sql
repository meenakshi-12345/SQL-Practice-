-- Problem: Odd and Even Transactions
-- Platform: leetcode
-- Difficulty: medium
-- Description:
-- For each transaction date, calculate:
-- 1. The sum of odd amounts
-- 2. The sum of even amounts

SELECT 
    transaction_date, 
    SUM(CASE 
            WHEN amount % 2 != 0 THEN amount 
            ELSE 0 
        END) AS odd_sum,
    SUM(CASE 
            WHEN amount % 2 = 0 THEN amount 
            ELSE 0 
        END) AS even_sum 
FROM transactions 
GROUP BY transaction_date
ORDER BY transaction_date;