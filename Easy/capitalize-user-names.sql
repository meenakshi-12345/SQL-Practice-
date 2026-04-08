-- Problem: Fix Names in a Table
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Capitalize the first letter of each user's name and make the rest lowercase.

SELECT 
    user_id, 
    CONCAT(
        UPPER(LEFT(name, 1)),
        LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
ORDER BY user_id;