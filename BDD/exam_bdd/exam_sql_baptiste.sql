-- Creation de la db
CREATE DATABASE hp_database
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- import du fichier fourni

-- 1
--1.1
CREATE TABLE house_history(
id INT AUTO_INCREMENT PRIMARY KEY,
old_house_name VARCHAR(255) NOT NULL,
old_founder_first_name VARCHAR(255) NOT NULL,
old_founder_last_name VARCHAR(255) NOT NULL
) ENGINE = INNODB ;

-- 1.2
CREATE TABLE offense(
id INT AUTO_INCREMENT PRIMARY KEY,
label VARCHAR(255) NOT NULL
) ENGINE = INNODB ;

-- 1.3
CREATE TABLE offense_list(
id INT AUTO_INCREMENT PRIMARY KEY,
created_at DATETIME NOT NULL,
offense_seriousness INT NOT NULL
) ENGINE = INNODB ;

-- ajouter les foreign key
ALTER TABLE offense_list
ADD COLUMN student_id INT NOT NULL;

ALTER TABLE offense_list
ADD COLUMN offense_id INT NOT NULL;

-- Lier les tables sur la foreign_key
ALTER TABLE offense_list
ADD CONSTRAINT fk_off_list_student
FOREIGN KEY (student_id)
REFERENCES student(id);

ALTER TABLE offense_list
ADD CONSTRAINT fk_off_list_offence
FOREIGN KEY (offense_id)
REFERENCES `offense`(id);

-- 2.
-- 2.1

INSERT INTO `student`(`house_id`, `year_of_birth`, `name`, `is_alive`)
VALUES(
    4,
1984,
"Baptiste Giannesini",
1
);

-- 2.2

INSERT INTO `offense`(label)
VALUES 
("Bare hand fight"),
("Dangerous magical duel"),
("Lethal magical duel");

-- 2.3
-- 5 offense list

INSERT INTO `offense_list`(
    `created_at`,
    `offense_seriousness`,
    `student_id`,
    `offense_id`
)
VALUES (
    NOW(),
    10,
    (select `student`.id FROM `student` WHERE `name` = "Harry Potter"),
    (select `offense`.id FROM `offense` WHERE `label` = "Dangerous magical duel")
),(
    NOW(),
    15,
    (select id FROM `student` WHERE `name` = "Hermione Granger"),
    (select id FROM `offense` WHERE `label` = "Lethal magical duel")
),(
    NOW(),
    10,
    (select id FROM `student` WHERE `name` = "Ron Weasley"),
    (select id FROM `offense` WHERE `label` = "Dangerous magical duel")
),(
    NOW(),
    10,
    (select id FROM `student` WHERE `name` = "Draco Malfoy"),
    (select id FROM `offense` WHERE `label` = "Dangerous magical duel")
),(
    NOW(),
    100,
    (select id FROM `student` WHERE `name` = "Baptiste Giannesini"),
    (select id FROM `offense` WHERE `label` = "Bare hand fight")
);

-- 3

UPDATE student
SET
`name`= "super etudiant",
`year_of_birth`= 1954
WHERE `name`= "Lily Moon";

-- 3.1

SELECT student.name, student.year_of_birth
FROM student;

-- 3.2

SELECT id, teacher.name
FROM teacher
WHERE teacher.name LIKE "%b%";

-- 3.3

SELECT type_of_class.teacher_id, type_of_class.subject_id, type_of_class.year_taught
FROM type_of_class
WHERE type_of_class.year_taught = 2020;

-- 3.4

SELECT subject_name, id
FROM `subject`
ORDER BY id DESC;

-- 3.5

SELECT type_of_class.year_taught, teacher.name , subject.subject_name
FROM type_of_class
JOIN teacher ON teacher_id = teacher.id
JOIN `subject` ON subject_id = subject.id;

-- 3.6

SELECT house.house_name, sum(house_point.total_point) AS `Total`
FROM house_point
JOIN house ON house_id = house.id
GROUP BY house.id;

-- 3.7

Select 
student.name, 
student.is_alive, 
sum(student_type_of_class.type_of_class_id) AS `Total_cours`
FROM student_type_of_class
JOIN student ON student_id = student.id
GROUP BY student.id;

-- 4.

DELIMITER //

CREATE TRIGGER after_update_house
AFTER UPDATE ON house
FOR EACH ROW
BEGIN

    INSERT INTO house_history (
        old_house_name,
        old_founder_first_name,
        old_founder_last_name)
		VALUES(
				OLD.house_name,
				OLD.founder_first_name,
				OLD.founder_last_name
				);

END //
DELIMITER;

-- 5.

-- premier event
CREATE EVENT add_morpheus
ON SCHEDULE EVERY 1 DAY
STARTS NOW()
DO
		INSERT INTO teacher
		VALUES (
            "Morpheus"
        );

-- second event
CREATE EVENT update_house_point
ON SCHEDULE EVERY 1 MINUTE
STARTS NOW()
DO
		UPDATE house_point
		SET total_point = 5000
        WHERE house_point.year <= 2005;


-- 6

-- Première procédure

DROP PROCEDURE IF EXISTS get_house_name_by_student_id;
DELIMITER //
CREATE PROCEDURE get_house_name_by_student_id(
IN v_student_id INT,
OUT v_house_name VARCHAR(255)
) 
BEGIN

	-- query to run
	SELECT house.house_name INTO v_house_name
    FROM student
    JOIN house ON house_id = house.id
    WHERE student.id = v_student_id;
	

END //
DELIMITER ;



-- Seconde procédure

DELIMITER //
CREATE PROCEDURE get_number_of_class_by_subject_id(
IN v_subject_id INT
) 
BEGIN

	-- query to run
	SELECT subject.subject_name, SUM(type_of_class.id) AS `Total`
    FROM type_of_class
    JOIN `subject` ON subject_id = subject.id
    WHERE subject.id = v_subject_id;
	

END //
DELIMITER ;