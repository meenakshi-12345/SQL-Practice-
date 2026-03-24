-- Problem: First Issued Amount by Card
-- Platform: SQL Practice / LeetCode / DataLemur style
-- Difficulty: Medium
-- Description:
-- For each card, find the total issued amount in the first month it was issued.
-- Return the result ordered by issued_amount in descending order.

SELECT 
    card_name, 
    SUM(issued_amount) AS issued_amount 
FROM (
    SELECT 
        card_name, 
        issue_year, 
        issue_month, 
        issued_amount,
        MIN(issue_year) OVER(PARTITION BY card_name) AS first_year,
        MIN(issue_month) OVER(PARTITION BY card_name ORDER BY issue_year, issue_month) AS first_month
    FROM monthly_cards_issued 
) x 
WHERE issue_year = first_year 
  AND issue_month = first_month
GROUP BY card_name 
ORDER BY issued_amount DESC;