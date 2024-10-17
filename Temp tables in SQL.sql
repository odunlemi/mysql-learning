-- Temporary Tables

-- Use to store intermediate results for complex queries
CREATE TEMPORARY TABLE temp_table 
(first_name VARCHAR(50),
last_name VARCHAR(50),
one_favourite_series VARCHAR(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table 
VALUES ('Abiodun', 'Longe', 'Blue Eye Samurai');

SELECT *
FROM temp_table;

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE occupation_is_manager
SELECT employee_id, occupation
FROM employee_salary
WHERE occupation LIKE '%Manager%'
;

SELECT *
FROM occupation_is_manager;