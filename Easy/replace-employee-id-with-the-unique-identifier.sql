-- Problem: 1378. Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

SELECT em.unique_id, e.name
FROM employees e
LEFT JOIN employeeUNI em USING (id)
