-- Problem: Top Earners
-- Platform: HackerRank
-- Difficulty: Medium
-- Description:
-- Calculate each employee's total earnings (months * salary).
-- Return the maximum total earnings and the number of employees
-- who have those maximum earnings.

SELECT months * salary AS total_earnings,
       COUNT(*) AS employee_count
FROM Employee
WHERE months * salary = (
    SELECT MAX(months * salary)
    FROM Employee
)
GROUP BY months * salary;