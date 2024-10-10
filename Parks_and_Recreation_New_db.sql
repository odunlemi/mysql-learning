SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `Parks_and_Recreation_New`;
CREATE SCHEMA `Parks_and_Recreation_New` DEFAULT CHARACTER SET latin1 ;
USE `Parks_and_Recreation_New`;

-- ----------------------------------------------------------------
-- TABLE `Parks_and_Recreation_New`.`employee_demographics`
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Parks_and_Recreation_New`.`employee_demographics` (
    `employee_id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `age` INT,
    `gender` VARCHAR(10),
    `birth_date` DATE,
    PRIMARY KEY (`employee_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- ----------------------------------------------------------------
-- TABLE `Parks_and_Recreation_New`.`employee_salary`
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Parks_and_Recreation_New`.`employee_salary` (
    `employee_id` INT NOT NULL,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `occupation` VARCHAR(50),
    `salary` INT,
    `dept_id` INT,
    PRIMARY KEY (`employee_id`),
    FOREIGN KEY (`employee_id`) REFERENCES `employee_demographics`(`employee_id`),
    FOREIGN KEY (`dept_id`) REFERENCES `parks_departments`(`department_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- ----------------------------------------------------------------
-- TABLE `Parks_and_Recreation_New`.`parks_departments`
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Parks_and_Recreation_New`.`parks_departments` (
    `department_id` INT NOT NULL AUTO_INCREMENT,
    `department_name` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`department_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


#
# Data for table 'employee_demographics'
#

INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (1,'Leslie', 'Knope', 44, 'Female','1979-09-25');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (3,'Tom', 'Haverford', 36, 'Male', '1987-03-04');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (4, 'April', 'Ludgate', 29, 'Female', '1994-03-27');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14');
INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES (12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');
# 11 records

#
# Data for table 'employee_salary'
#

INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000, 1);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000, 1);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (3, 'Tom', 'Haverford', 'Entrepreneur', 50000, 1);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (4, 'April', 'Ludgate', 'Assistant to the Director of Parks and Recreation', 25000, 1);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (5, 'Jerry', 'Gergich', 'Office Manager', 50000, 1);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (6, 'Donna', 'Meagle', 'Office Manager', 60000, 1);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (7, 'Ann', 'Perkins', 'Nurse', 55000, 4);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (8, 'Chris', 'Traeger', 'City Manager', 90000, 3);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (9, 'Ben', 'Wyatt', 'State Auditor', 70000, 6);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (10, 'Andy', 'Dwyer', 'Shoe Shiner and Musician', 20000, NULL);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3);
INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `occupation`, `salary`, `dept_id`) VALUES (12, 'Craig', 'Middlebrooks', 'Parks Director', 65000, 1);
# 12 records

#
# Data for table 'parks_departments'
#

INSERT INTO `parks_departments` (`department_name`) VALUES ('Parks and Recreation');
INSERT INTO `parks_departments` (`department_name`) VALUES ('Animal Control');
INSERT INTO `parks_departments` (`department_name`) VALUES ('Public Works');
INSERT INTO `parks_departments` (`department_name`) VALUES ('Healthcare');
INSERT INTO `parks_departments` (`department_name`) VALUES ('Library');
INSERT INTO `parks_departments` (`department_name`) VALUES ('Finance');
# 6 records

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
