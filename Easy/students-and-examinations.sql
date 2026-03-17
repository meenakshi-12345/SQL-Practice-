-- Problem: Students and Examinations
-- Platform: SQL Practice / LeetCode
-- Difficulty: Easy
-- Description:
-- For each student and each subject, count how many exams they attended.
-- Return all combinations of students and subjects, even if the count is 0.

SELECT 
    s.student_id, 
    s.student_name, 
    su.subject_name, 
    COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects su
LEFT JOIN Examinations e 
    ON s.student_id = e.student_id 
   AND su.subject_name = e.subject_name
GROUP BY 
    s.student_id, 
    s.student_name, 
    su.subject_name
ORDER BY 
    s.student_id, 
    su.subject_name;