-- Problem: 577. Employee Bonus
-- Link: https://leetcode.com/problems/employee-bonus/description/

SELECT e.name, b.bonus
FROM employee e
LEFT JOIN bonus b USING (empid)
WHERE b.bonus < 1000 OR b.bonus IS NULL
