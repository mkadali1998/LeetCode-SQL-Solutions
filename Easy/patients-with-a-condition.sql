-- Problem: 1527. Patients With a Condition
-- Link: https://leetcode.com/problems/patients-with-a-condition/description/

SELECT 
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions REGEXP '(^|[[:space:]])DIAB1';
