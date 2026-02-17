-- Problem: Combine Person and Address Tables
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Retrieve each person's first name, last name, city, and state.
-- Include all persons even if they do not have an address.

SELECT p.firstName,
       p.lastName,
       a.city,
       a.state
FROM Person p
LEFT JOIN Address a
       ON p.personID = a.personID;
