-- Problem: Average Product Stars by Month
-- Platform: DataLemur
-- Difficulty: Easy
-- Description:
-- Calculate the average star rating for each product per month.
-- Results should be rounded to 2 decimal places and ordered
-- by month and product_id.

SELECT EXTRACT(MONTH FROM submit_date) AS mth,
       product_id,
       CAST(AVG(stars) AS DECIMAL(10,2)) AS avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id;
