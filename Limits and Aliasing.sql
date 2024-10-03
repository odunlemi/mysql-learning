-- Limits & Aliasing

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
LIMIT 3
;

-- Use with Order By
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;


SELECT *
FROM employee_demographics
ORDER BY age DESC
-- The Limit takes the second position and gives you the next row
LIMIT 2, 1
;


-- Aliasing
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

-- The AS is not necessary and is implied
SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;