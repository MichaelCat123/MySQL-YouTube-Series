-- limit and aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC	#orders age and then does the limit output of 3
LIMIT 2, 1		#starts at second row and takes 1 after
;

-- aliasing		#changes name of column 
SELECT gender, AVG(age) avg_age		#aliasing uses the 'AS' statement to make
FROM employee_demographics				#use of another form of the name wanted
GROUP BY gender							#doesn't need the 'AS' key word 
HAVING avg_age > 40
;

