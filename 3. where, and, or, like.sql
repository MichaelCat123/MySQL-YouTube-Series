-- WHERE --

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary <= 50000 
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical OPs

-- LIKE STATEMENT 
-- % and _
# % means "anything"
# _ means "fill in the blank" --> _ is a char that is fill in the blank

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;



