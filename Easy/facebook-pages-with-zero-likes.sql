-- Problem: Facebook Pages With Zero Likes
-- Platform: HackerRank
-- Difficulty: Easy
-- Description:
-- Return the IDs of Facebook pages that have no likes.
-- Output should be sorted in ascending order of page_id.

SELECT p.page_id
FROM pages p
LEFT JOIN page_likes l 
       ON p.page_id = l.page_id
WHERE l.liked_date IS NULL
ORDER BY p.page_id;
