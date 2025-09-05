-- Problem: 627. Swap Salary
-- Link: https://leetcode.com/problems/swap-salary/description/

UPDATE Salary 
SET sex = CASE 
            WHEN sex = 'm' THEN 'f'
            WHEN sex = 'f' THEN 'm'
        END
