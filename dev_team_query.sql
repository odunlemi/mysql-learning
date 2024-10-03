SELECT *
FROM dev_team.new_table;

SELECT *
FROM dev_team.new_table
ORDER BY gender
;

SELECT class
FROM dev_team.new_table
ORDER BY class ASC
;

SELECT gender, COUNT(class) class
FROM dev_team.new_table
GROUP BY gender
;

SELECT *
FROM dev_team.new_table
WHERE (first_name = 'Ayo' AND gender = 'Female') OR class = 'Programming'
;