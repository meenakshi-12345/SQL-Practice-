-- Problem: Find Students Who Improved Their Scores (Detailed)
-- Difficulty: Medium
-- Platform: LeetCode
-- Description:
-- A student is considered to have improved if:
-- 1. They have taken exams in the same subject on at least two different dates
-- 2. Their latest score is higher than their first score
-- Return:
-- student_id, subject, first_score, latest_score
-- Ordered by student_id and subject

WITH ranked_scores AS (
    SELECT 
        student_id,
        subject,
        score,
        exam_date,
        ROW_NUMBER() OVER (
            PARTITION BY student_id, subject 
            ORDER BY exam_date
        ) AS first_rank,
        ROW_NUMBER() OVER (
            PARTITION BY student_id, subject 
            ORDER BY exam_date DESC
        ) AS last_rank
    FROM Scores
)

SELECT 
    f.student_id,
    f.subject,
    f.score AS first_score,
    l.score AS latest_score
FROM ranked_scores f
JOIN ranked_scores l
    ON f.student_id = l.student_id
    AND f.subject = l.subject
WHERE 
    f.first_rank = 1
    AND l.last_rank = 1
    AND l.score > f.score
ORDER BY f.student_id, f.subject;