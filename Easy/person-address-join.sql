-- Problem: Combine Person and Address Information
-- Difficulty: Easy
-- Platform- Hackerrank
-- Description:
-- Retrieve each person's first name, last name, city, and state.
-- Include all people even if they do not have an address.

SELECT 
    p.firstName AS firstName, 
    p.lastName AS lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a 
    ON p.personId = a.personId;