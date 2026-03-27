-- Problem: User Post Days Difference
-- Platform:  DataLemur 
-- Difficulty: Easy
-- Description:
-- For each user, calculate the number of days between their first and last post in 2021.
-- Only include users where the difference is greater than 0.

SELECT 
    user_id, 
    (maxi - mini) AS days_between
FROM (
    SELECT 
        user_id, 
        MAX(DATE(post_date)) AS maxi,
        MIN(DATE(post_date)) AS mini
    FROM posts
    WHERE EXTRACT(YEAR FROM post_date) = 2021
    GROUP BY user_id
) t
WHERE (maxi - mini) > 0;