DROP DATABASE IF EXISTS `dev_team`;
CREATE DATABASE `dev_team`;
USE `dev_team`;




CREATE TABLE new_table (
    matric_no INT NOT NULL,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    gender VARCHAR(6),
    mobile_no VARCHAR(13),
    class VARCHAR(45),
    PRIMARY KEY (matric_no)
);

INSERT INTO new_table (matric_no, first_name, last_name, gender, mobile_no, class)
VALUES
(2000, 'Ayo', 'Adeagbo', 'Female', 08032193721, 'Programming'),
(2001, 'Folarin', 'Afehiku', 'Male', 09012364822, 'Design'),
(2002, 'Daniel', 'Eze', 'Male', 09183201028, 'Data Analysis' ),
(2003, 'Esther', 'Omisore', 'Female', 08127271173, 'Robotics');
