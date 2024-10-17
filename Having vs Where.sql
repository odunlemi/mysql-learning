-- Having vs Where

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

-- In this query, the WHERE clause filters on the row level
-- The HAVING clause filters on the aggregate function level 
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
-- Having only works for aggregated functions after Group By has run
HAVING AVG(salary) >= 50000
;