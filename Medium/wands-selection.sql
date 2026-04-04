-- Problem: Ollivander's Inventory (Wands)
-- Platform: HackerRank
-- Difficulty: Medium
-- Description:
-- Find the id, age, coins_needed, and power of wands that are:
-- 1. Not evil
-- 2. The cheapest (minimum coins_needed) for each combination of age and power
-- Return results ordered by power (desc) and age (desc)

SELECT 
    w.id, 
    wp.age, 
    w.coins_needed, 
    w.power
FROM Wands w
JOIN Wands_Property wp 
    ON w.code = wp.code
WHERE wp.is_evil = 0
  AND w.coins_needed = (
        SELECT MIN(w2.coins_needed)
        FROM Wands w2
        JOIN Wands_Property wp2 
            ON w2.code = wp2.code
        WHERE wp2.is_evil = 0
          AND wp2.age = wp.age
          AND w2.power = w.power
    )
ORDER BY w.power DESC, wp.age DESC;