-- Group By

SELECT *
FROM employee_demographics;


-- Aggregated functions
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;


SELECT *
FROM employee_salary;

-- Group By with multiple columns
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
ORDER BY gender, age
;

-- Order By column positions (not recommended; by best practice use the column names)
SELECT *
FROM employee_demographics
ORDER BY 5, 4
;