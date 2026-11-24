-- case statements

select first_name, 
last_name, age,
case
	when age <= 30 then 'young'
    when age between 13 and 50 then 'old'
    when age >= 50 then 'on deaths door'
end as ageBracket
from employee_demographics
;


-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10%


select first_name, last_name, salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as newSalary,
case
	when dept_id = 6 then salary * 1.1
end as bonus
from employee_salary
;


select *
from employee_salary;
select *
from employee_demographics

;

