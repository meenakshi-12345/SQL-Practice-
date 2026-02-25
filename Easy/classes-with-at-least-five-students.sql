-- Problem: Classes With At Least 5 Students
-- Platform: SQL Practice / LeetCode style
-- Difficulty: Easy
-- Description:
-- Retrieve the class names that have at least 5 students enrolled.

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;