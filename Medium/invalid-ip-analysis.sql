-- Problem: Find Invalid IP Addresses
-- Platform: Practice / Advanced SQL
-- Difficulty: Hard
-- Description:
-- Identify invalid IP addresses and count how many times they appear.
-- An IP is invalid if:
-- 1. It does not contain exactly 3 dots
-- 2. Any segment is non-numeric
-- 3. Any segment > 255
-- 4. Any segment has leading zeros (e.g., 01, 001)

SELECT ip, COUNT(*) AS invalid_count
FROM logs
WHERE 
    
    LENGTH(ip) - LENGTH(REPLACE(ip, '.', '')) != 3
    
    OR EXISTS (
        SELECT 1
        FROM (
            SELECT 
                SPLIT_PART(ip, '.', n) AS part
            FROM generate_series(1, 4) AS n
        ) parts
        WHERE 
            part !~ '^[0-9]+$'
            
            OR part::int > 255
            
            OR (LENGTH(part) > 1 AND part LIKE '0%')
    )
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;