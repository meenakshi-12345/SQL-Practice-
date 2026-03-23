-- Problem: Find Users With Valid E-Mails
-- Platform: SQL Practice / LeetCode
-- Difficulty: Easy
-- Description:
-- Find users with valid email addresses that follow these rules:
-- 1. The email must start with a letter.
-- 2. It can contain letters, digits, underscore (_), period (.), or dash (-).
-- 3. The domain must be '@leetcode.com'.

SELECT *
FROM Users
WHERE mail ~ '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\.com$';