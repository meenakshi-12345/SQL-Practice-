-- Problem: Biggest Single Number
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Find the largest number that appears exactly once in the MyNumbers table.
-- If no such number exists, return NULL.

SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers  
    GROUP BY num 
    HAVING COUNT(*) = 1
) t;