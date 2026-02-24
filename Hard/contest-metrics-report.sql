-- Problem: Contest Metrics Report
-- Platform: HackerRank
-- Difficulty: Hard
-- Description:
-- For each contest, return:
--   - contest_id
--   - hacker_id
--   - name
--   - total_submissions
--   - total_accepted_submissions
--   - total_views
--   - total_unique_views
--
-- Include only contests where at least one of the above metrics is greater than 0.
-- Results should be ordered by contest_id.

SELECT 
    c.contest_id,
    c.hacker_id,
    c.name,
    COALESCE(SUM(ss.total_submissions), 0) AS total_submissions,
    COALESCE(SUM(ss.total_accepted_submissions), 0) AS total_accepted_submissions,
    COALESCE(SUM(vs.total_views), 0) AS total_views,
    COALESCE(SUM(vs.total_unique_views), 0) AS total_unique_views
FROM Contests c
JOIN Colleges co 
    ON c.contest_id = co.contest_id
JOIN Challenges ch 
    ON co.college_id = ch.college_id

LEFT JOIN (
    SELECT 
        challenge_id,
        SUM(total_views) AS total_views,
        SUM(total_unique_views) AS total_unique_views
    FROM View_Stats
    GROUP BY challenge_id
) vs 
    ON ch.challenge_id = vs.challenge_id

LEFT JOIN (
    SELECT 
        challenge_id,
        SUM(total_submissions) AS total_submissions,
        SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM Submission_Stats
    GROUP BY challenge_id
) ss 
    ON ch.challenge_id = ss.challenge_id

GROUP BY c.contest_id, c.hacker_id, c.name

HAVING 
    COALESCE(SUM(ss.total_submissions), 0) > 0
    OR COALESCE(SUM(ss.total_accepted_submissions), 0) > 0
    OR COALESCE(SUM(vs.total_views), 0) > 0
    OR COALESCE(SUM(vs.total_unique_views), 0) > 0

ORDER BY c.contest_id;