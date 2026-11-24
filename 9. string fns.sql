-- string functions

SELECT length('skyfall');

SELECT first_name, length(first_name)
FROM employee_demographics
order by 2
;

select upper('sky');
select lower('SH');

SELECT first_name, upper(first_name)
FROM employee_demographics
;

-- trim gets rid of extra white space before and after 
# ltrim = left trim
# rtrim = right trim

SELECT RTRIM('    SKY     ')
;

select first_name, 
left(first_name, 4), #selects 4 chars from the left side
right(first_name, 4), #selects 4 chars from right side
substring(first_name, 3, 2), #outputs starting at index 3 and goes over 2 right
substring(birth_date, 6, 2) as birth_month
from employee_demographics #index count starts at 1
;

# replaces a char with another char
select first_name, REPLACE(first_name, 'a', 'z')
from employee_demographics
;

#locates first string within second string
select locate('k', 'mike');

#concat combines strings together
select first_name, last_name,
concat(first_name,' ' , last_name) as full_name
from employee_demographics
;

