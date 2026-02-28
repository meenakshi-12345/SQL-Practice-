-- Problem: Triangle Judgement
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- For each row in the Triangle table, determine whether
-- the three sides (x, y, z) can form a valid triangle.
-- A triangle is valid if:
--   x + y > z
--   x + z > y
--   y + z > x

SELECT 
    x,
    y,
    z,
    CASE 
        WHEN x + y > z 
         AND x + z > y 
         AND y + z > x 
        THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;