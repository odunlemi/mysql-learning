-- String functions

SELECT LENGTH('sky');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics;


-- Capitalization

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT LOWER('SKY');


-- Trim

SELECT TRIM('    This is trimmed   ');
SELECT ('    This is NOT trimmed   ');
SELECT LTRIM('    Left trimmed   ');
SELECT RTRIM('    Right trimmed   ');


-- Substrings

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month,
SUBSTRING(birth_date,9,2) AS birth_day
FROM employee_demographics;


-- Replace

SELECT first_name, REPLACE(first_name, 'a','z')
FROM employee_demographics;


-- LOCATE
SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('A', first_name)
FROM employee_demographics;


-- CONCATENATE
SELECT first_name, 
last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;


SELECT first_name,
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month,
SUBSTRING(birth_date,9,2) AS birth_day,
CONCAT(SUBSTRING(birth_date,6,2), '-', SUBSTRING(birth_date,9,2)) AS birth_month_day
FROM employee_demographics;