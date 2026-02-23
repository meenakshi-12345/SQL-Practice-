-- Problem: Not Boring Movies
-- Platform: SQL Practice / LeetCode style
-- Difficulty: Easy
-- Description:
-- Retrieve all movies with an odd id and a description
-- that is not equal to 'boring'.
-- Order the results by rating in descending order.

SELECT *
FROM Cinema
WHERE id % 2 != 0
  AND description <> 'boring'
ORDER BY rating DESC;