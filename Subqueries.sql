-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1)
;


SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary
;

    
SELECT first_name, 
salary,
Avg_Salary,
CASE
	WHEN salary > Avg_Salary THEN 'Yes'
    WHEN salary < Avg_Salary THEN 'No'
END AS Earning_above_avg
FROM employee_salary,
(SELECT AVG(salary) AS Avg_Salary
FROM employee_salary) Avg_table;	-- Alias for the subquery needed but not referenced


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT AVG(max_age)
FROM
(SELECT gender, 
AVG(age) avg_age, 
MAX(age) max_age, MIN(age) min_age, 
COUNT(age) count_age
FROM employee_demographics
GROUP BY gender) AS Agg_table
;