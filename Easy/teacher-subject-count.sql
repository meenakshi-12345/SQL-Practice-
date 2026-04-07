-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Count how many unique subjects each teacher teaches.

SELECT 
    teacher_id, 
    COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;