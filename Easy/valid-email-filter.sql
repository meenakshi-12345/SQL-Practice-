-- Problem: Find Valid Emails
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Return all users with valid emails.
-- A valid email:
-- 1. Starts with letters/digits/underscore
-- 2. Contains exactly one '@'
-- 3. Domain contains only letters
-- 4. Ends with '.com'

SELECT * 
FROM Users 
WHERE email ~ '^[a-zA-Z0-9_]+@[a-zA-Z]+\.com$'
ORDER BY user_id;