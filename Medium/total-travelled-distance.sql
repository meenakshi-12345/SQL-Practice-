-- Problem: Total Traveled Distance
-- Platform: LeetCode 
-- Difficulty: Easy / Medium
-- Description:
-- Calculate the total distance traveled by each user.
-- Include users who have not taken any rides.
-- Order results by travelled_distance in descending order,
-- and by name in ascending order if there is a tie.

SELECT 
    u.name,
    COALESCE(SUM(r.distance), 0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
    ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY travelled_distance DESC, u.name;