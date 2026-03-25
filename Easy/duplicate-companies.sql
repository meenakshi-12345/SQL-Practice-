-- Problem: Duplicate Job Listings
-- Platform: SQL Practice / DataLemur / LeetCode style
-- Difficulty: Easy
-- Description:
-- Find the number of companies that have posted more than one job listing.

SELECT COUNT(*)
FROM (
    SELECT company_id
    FROM job_listings 
    GROUP BY company_id 
    HAVING COUNT(company_id) > 1
) t;