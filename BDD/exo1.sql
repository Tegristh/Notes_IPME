CREATE TABLE owner(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(255)
)ENGINE = INNODB;

CREATE Table Animal(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL
)ENGINE = INNODB;

CREATE TABLE race(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    label VARCHAR(255) NOT NULL
)ENGINE = INNODB;

CREATE Table color (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    label VARCHAR(255) NOT null
)ENGINE = INNODB;

CREATE Table Animal_color(
    id_animal INT NOT NULL,
    id_color INT NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES animal(id),
    FOREIGN KEY (id_color) REFERENCES color(id)
)ENGINE = INNODB;

ALTER TABLE animal
    ADD COLUMN id_race INT NOT NULL,
    ADD COLUMN id_owner INT NOT NULL
;

ALTER TABLE animal
    ADD CONSTRAINT fk_animal_race
    FOREIGN KEY (id_race)
    REFERENCES race(id),
    ADD CONSTRAINT fk_animal_owner
    FOREIGN KEY (id_owner)
    REFERENCES owner(id);