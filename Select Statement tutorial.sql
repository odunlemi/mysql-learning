SELECT *
FROM parks_and_recreation.employee_demographics;

-- Separate column names for readability and calculations
SELECT first_name, 
last_name, 
birth_date,
age,
(age * 10) + 10
FROM parks_and_recreation.employee_demographics;
# PEMDAS is the order of execution of calculations and math statements in SQL

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;