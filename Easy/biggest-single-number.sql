-- Problem: 619. Biggest Single Number
-- Link: https://leetcode.com/problems/biggest-single-number/description/

SELECT 
  MAX(num) AS num
FROM (
  SELECT num
  FROM MyNumbers
  GROUP BY num
  HAVING COUNT(*) = 1
) AS singles;
