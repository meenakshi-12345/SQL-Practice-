-- Problem: Patients With a Condition
-- Platform: LeetCode
-- Difficulty: medium
-- Description:
-- Retrieve patient details where the medical condition
-- contains the code 'DIAB1'. The condition code may appear
-- at the beginning or after a space in the conditions column.

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';