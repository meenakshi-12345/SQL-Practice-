-- Problem: User Activity for the Past 30 Days I
-- Platform:  LeetCode
-- Difficulty: Easy
-- Description:
-- Find the number of active users for each day within a 30-day period.
-- A user is considered active if they performed at least one activity on that day.

SELECT 
    activity_date AS day, 
    COUNT(DISTINCT user_id) AS active_users
FROM Activity 
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;