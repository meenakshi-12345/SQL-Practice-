-- Problem: Customers Who Bought All Products
-- Platform: LeetCode 
-- Difficulty: Medium
-- Description:
-- Retrieve the customer_id of customers who have purchased
-- all available products in the Product table.

SELECT c.customer_id
FROM Customer c
JOIN Product p 
    ON c.product_key = p.product_key
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key) = (
    SELECT COUNT(*) 
    FROM Product
);