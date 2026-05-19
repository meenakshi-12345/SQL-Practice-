-- Problem: Find Maximum Total Earnings
-- Platform : HackerRank
-- Difficulty: Medium
-- Description:
-- Calculate:
-- 1. Maximum total earnings (salary * months)
-- 2. Number of employees who earned this maximum amount
-- Return both values in a single row

SELECT 
    CONCAT(MAX(salary * months), ' ', COUNT(*))
FROM Employee
WHERE salary * months = (
    SELECT MAX(salary * months) AS earnings
    FROM Employee
);