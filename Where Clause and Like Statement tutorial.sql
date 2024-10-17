# WHERE clause 

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;


-- AND OR NOT -- Logical operators
-- Logical operators allow us to have different logic
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;


-- The order of operation PEMDAS also applies to logical operators
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;


-- LIKE statment
-- %, _ Special characters used with the LIKE statement, % means anything, _ means a specific match
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%'
;