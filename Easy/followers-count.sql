-- Problem: Count Followers Per User
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- For each user, calculate:
-- 1. Total number of followers
-- Return the result ordered by user_id

SELECT 
    user_id, 
    COUNT(follower_id) AS followers_count
FROM Followers 
GROUP BY user_id
ORDER BY user_id;