-- Problem: Game Play Analysis I (First Login Date)
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- Retrieve the first login date for each player.

SELECT player_id,
       MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id
ORDER BY first_login;