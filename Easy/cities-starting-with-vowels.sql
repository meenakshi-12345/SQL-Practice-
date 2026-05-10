-- Problem: Find Cities Starting with Vowels
-- Difficulty: Easy
-- Description:
-- Retrieve distinct city names that start with a vowel
-- (a, e, i, o, u)

SELECT DISTINCT 
    city
FROM station
WHERE 
    city LIKE 'A%'
    OR city LIKE 'E%'
    OR city LIKE 'I%'
    OR city LIKE 'O%'
    OR city LIKE 'U%';