-- Problem: Nth Highest Salary
-- Platform: LeetCode
-- Difficulty: Medium
-- Description:
-- Create a function NthHighestSalary that returns the Nth highest
-- distinct salary from the Employee table.
-- If the Nth highest salary does not exist, return NULL.

CREATE OR REPLACE FUNCTION NthHighestSalary(N INT)
RETURNS TABLE (salary INT) AS
$$
    SELECT salary
    FROM (
        SELECT salary,
               DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM Employee
    ) t
    WHERE rnk = N
    LIMIT 1;
$$ LANGUAGE SQL;