-- joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal #INNER is implied when useing JOIN
	ON dem.employee_id = sal.employee_id
; #joined both tables together cus employee_id are the same


-- outer joins #has left and right joins
#left join starts from the first table and matches to the second
#right join starts from the second table and matches to the first
SELECT *
FROM employee_demographics AS dem #left table is the starting one FROM
RIGHT JOIN employee_salary AS sal #second table is right table
	ON dem.employee_id = sal.employee_id
;

-- self join 

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS fnamesanta,
emp1.last_name AS lnamesanta,
emp2.first_name AS fnameemp,
emp2.last_name AS lnameemp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- joining multiple tables together

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments
;
