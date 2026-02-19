-- Problem: Find Duplicate Emails
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- Retrieve all email addresses that appear more than once
-- in the Person table.

SELECT email AS "Email"
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;
