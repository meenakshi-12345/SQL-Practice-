-- Problem: Find Cities in Africa
-- Difficulty: Easy
-- Platform: HackerRank
-- Description:
-- Retrieve the names of all cities that are located in countries
-- belonging to the continent 'Africa'

SELECT 
    c.name
FROM city c 
JOIN country ct 
    ON c.CountryCode = ct.code 
WHERE ct.continent = 'Africa';