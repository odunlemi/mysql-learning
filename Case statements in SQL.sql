-- Case statements

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 AND 50 THEN 'Old'
    WHEN age > 50 THEN "On Death's Door"
END AS age_bracket
FROM employee_demographics;

SELECT first_name, last_name, salary, dept_id, pd.department_name
FROM employee_salary AS sal
JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
ORDER BY salary DESC
;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus


SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05	-- 5%
    WHEN salary > 50000 THEN salary * 1.07	-- 7%
END AS New_Salary,		-- Comma at the end of one case statement
CASE
	WHEN dept_id = 6 THEN salary * .10	-- 10%
END AS Bonus
FROM employee_salary;
