-- Problem: Weather Observation Station 5
-- Platform: HackerRank
-- Difficulty: Easy
-- Description:
-- Find the city with the shortest and longest names along with their lengths.
-- If there are multiple cities with the same length,
-- return the one that comes first alphabetically.

(
SELECT CITY, LENGTH(CITY) AS city_length
FROM STATION 
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1
)

UNION

(
SELECT CITY, LENGTH(CITY) AS city_length
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1
);