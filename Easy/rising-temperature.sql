-- Problem: 197. Rising Temperature
-- Link: https://leetcode.com/problems/rising-temperature/description/

SELECT W.id AS Id
FROM weather W
JOIN weather WE on date_sub(W.recordDate, Interval 1 day) = WE.recordDate
Where W.temperature > WE.temperature; 
