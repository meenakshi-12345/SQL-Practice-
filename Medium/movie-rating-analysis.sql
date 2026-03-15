-- Problem: Movie Rating
-- Platform: LeetCode
-- Difficulty: Medium
-- Description:
-- 1. Find the user who rated the greatest number of movies.
--    If there is a tie, return the lexicographically smaller name.
-- 2. Find the movie with the highest average rating in February 2020.
--    If there is a tie, return the lexicographically smaller movie title.

(SELECT u.name AS results
FROM Users u
JOIN MovieRating m 
    ON u.user_id = m.user_id
GROUP BY u.name
ORDER BY COUNT(*) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT mo.title AS results
FROM Movies mo
JOIN MovieRating m 
    ON mo.movie_id = m.movie_id
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY mo.title
ORDER BY AVG(rating) DESC, mo.title ASC
LIMIT 1);