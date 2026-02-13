-- Problem: Revising the Select Query I
-- Platform: HackerRank
-- Difficulty: Basic
-- Description: Display all columns for cities in USA 
--              with population greater than 100000.

SELECT *
FROM CITY
WHERE countrycode = 'USA'
  AND population > 100000;

