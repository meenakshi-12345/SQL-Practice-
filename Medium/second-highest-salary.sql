-- Problem: Second Highest Salary
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Retrieve the second highest salary from the Employee table.
-- If no second highest salary exists, return NULL.


APPROACH - 1 

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

APPROACH - 2
SELECT Salary AS SecondHighestSalary
FROM (
SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1
) 

APPROACH - 3 
SELECT MAX(Salary) AS SecondHighestSalary
FROM (
SELECT salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) AS rnk
FROM Employee
) t 
WHERE rnk = 2