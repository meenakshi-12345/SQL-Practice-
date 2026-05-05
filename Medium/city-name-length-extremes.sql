-- Problem: Find Cities with Shortest and Longest Names
-- Difficulty: Medium
-- Platform: Hackerrank
-- Description:
-- Retrieve:
-- 1. The city with the shortest name
-- 2. The city with the longest name
-- If multiple cities have same length, return the one that comes first alphabetically

(
    SELECT 
        city, 
        LENGTH(city) AS city_length
    FROM station 
    ORDER BY LENGTH(city), city
    LIMIT 1
)
UNION 
(
    SELECT 
        city, 
        LENGTH(city) AS city_length
    FROM station 
    ORDER BY LENGTH(city) DESC, city
    LIMIT 1
);