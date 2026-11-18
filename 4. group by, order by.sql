-- GROUP BY

SELECT *
FROM employee_demographics;

#avg(age) is a calculation
#count() counts number of rows it contains

SELECT gender, AVG(age), max(age), min(age), count(age) 
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
# ASC = ASCENDING
# DESC = DESENDING
SELECT * 
FROM employee_demographics
ORDER BY gender,age
;


