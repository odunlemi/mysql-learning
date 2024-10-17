-- Window functions
-- Allow us to look at a partition or a group 
	-- where they each keep their own unique rows in the output
    
SELECT gender, AVG(salary) as avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;


-- Window function
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- SUM
SELECT dem.first_name, dem.last_name, gender, 
SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;


-- Rolling Total
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_salary;


-- ROlling Total per department
SELECT sal1.employee_id, sal1.first_name, sal1.last_name, sal1.dept_id, pd.department_name, sal1.salary,
SUM(sal1.salary) OVER(PARTITION BY sal1.dept_id ORDER BY sal1.employee_id) AS Dept_Rolling_Total
FROM employee_salary sal1
JOIN employee_salary sal2
	ON sal1.employee_id = sal2.employee_id
JOIN parks_departments pd
	ON sal1.dept_id = pd.department_id
;


-- Row number
-- Gives a row number based off whatever
	-- you are partitioning by or ordering by in your Window function
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;


-- Rank number
-- Rank asigns the same number for duplicates
	-- based off the Order By salary
    -- And it assigns the next number positionally
-- Dense rank does the same as Rank
	-- But assigns the next number numerically
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;