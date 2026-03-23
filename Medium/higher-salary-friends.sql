-- Problem: Higher Salary Friends
-- Platform: HackerRank
-- Difficulty: Easy / Medium
-- Description:
-- Find the names of students whose friends earn a higher salary than them.
-- Return the result ordered by the friend's salary.

SELECT s.Name
FROM Students s
JOIN Friends f 
    ON s.ID = f.ID
JOIN Packages p1 
    ON s.ID = p1.ID
JOIN Packages p2 
    ON f.Friend_ID = p2.ID
WHERE p2.Salary > p1.Salary
ORDER BY p2.Salary;