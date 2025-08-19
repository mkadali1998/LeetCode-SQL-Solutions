-- Problem: 175. Combine Two Tables
-- Link: https://leetcode.com/problems/combine-two-tables/description/

SELECT firstName, lastName, city, state
FROM Person 
LEFT JOIN Address USING (personId) 
