-- Problem: 1075. Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/description/

SELECT p.project_id, ROUND (SUM(e.experience_years)/COUNT(e.employee_id), 2) AS average_years
FROM project p
JOIN employee e USING (employee_id)
GROUP BY p.project_id
