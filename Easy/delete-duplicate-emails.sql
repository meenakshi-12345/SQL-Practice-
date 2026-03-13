-- Problem: Delete Duplicate Emails
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Delete duplicate email records from the Person table.
-- Keep only the record with the smallest id for each email.

DELETE FROM Person
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);