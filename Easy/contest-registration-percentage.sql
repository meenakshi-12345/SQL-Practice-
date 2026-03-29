-- Problem: Percentage of Users Attended a Contest
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- For each contest, calculate the percentage of users who registered.
-- Return results ordered by percentage (desc) and contest_id (asc).

SELECT 
    r.contest_id, 
    ROUND(
        COUNT(r.user_id) * 100.0 / 
        (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM Register r 
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;