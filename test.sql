SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE `sql_practice`;
SHOW DATABASES;
USE `sql_practice`;

CREATE TABLE `student` (
	`student_id` INT AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `major` VARCHAR(20) DEFAULT '歷史',
    PRIMARY KEY(`student_id`),
    `score` INT
);

DESCRIBE `student`;
DROP TABLE `student`;

ALTER TABLE `student` ADD gpa DECIMAL(3,2);
ALTER TABLE `student` DROP COLUMN gpa;

INSERT INTO `student` VALUES(3, '小綠', 'NULL');
INSERT INTO `student` (`name`, `major`, `student_id`) VALUES('小黃', '英文', 4);
INSERT INTO `student` (`name`, `major`, `score`) VALUES('小綠', '社會', '75');
INSERT INTO `student` (`student_id`, `name`, `major`, `score`) VALUES(4, '小傑', '程式設計', 69);
SELECT * FROM `student`;
SELECT `name`, `score` FROM `student`;
SELECT * 
FROM `student`
WHERE `major` IN('國文', '社會學', '程式設計')
ORDER BY `score` ASC
LIMIT 5;


UPDATE `student`
SET `major` = '社會學'
WHERE `major` = '社會' 	OR  `major` = '歷史';

UPDATE `student`
SET `score` = 45, `name` = '小褐' 
WHERE `student_id` = '2';

DELETE FROM `student`
WHERE `student_id` = 4;
