-- Problem: Bank Account Summary (High Balance Accounts)
-- Platform: LeetCode
-- Difficulty: Medium
-- Description:
-- Retrieve the names of users whose total transaction
-- amount (balance) is greater than 10000.

SELECT 
    u.name,
    SUM(t.amount) AS balance
FROM Users u
JOIN Transactions t 
    ON u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000;