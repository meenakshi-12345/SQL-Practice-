-- Problem: Prime Numbers Up To 1000
-- Platform: HackerRank
-- Difficulty: Medium
-- Description:
-- Generate all prime numbers from 2 to 1000 and display them
-- in a single row separated by '&' symbol.

WITH nums (n) AS (
    SELECT 2 FROM SYSIBM.SYSDUMMY1
    UNION ALL
    SELECT n + 1
    FROM nums
    WHERE n < 1000
)

SELECT LISTAGG(n, '&') WITHIN GROUP (ORDER BY n)
FROM nums a
WHERE NOT EXISTS (
    SELECT 1
    FROM nums b
    WHERE b.n < a.n
      AND b.n > 1
      AND MOD(a.n, b.n) = 0
);
