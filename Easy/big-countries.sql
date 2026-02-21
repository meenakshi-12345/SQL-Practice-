-- Problem: Big Countries
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- Retrieve the name, population, and area of countries
-- where the area is at least 3,000,000
-- OR the population is at least 25,000,000.

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;