-- Problem: Count Salary Categories
-- Platform: SQL Practice / LeetCode
-- Difficulty: Easy
-- Description:
-- Categorize accounts into three groups based on income:
--   - Low Salary (< 20000)
--   - Average Salary (20000–50000)
--   - High Salary (> 50000)
-- Return the number of accounts in each category.

SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income < 20000

UNION ALL

SELECT 'Average Salary', COUNT(*)
FROM Accounts
WHERE income BETWEEN 20000 AND 50000

UNION ALL

SELECT 'High Salary', COUNT(*)
FROM Accounts
WHERE income > 50000;