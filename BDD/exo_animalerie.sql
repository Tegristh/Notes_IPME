# 1


SELECT animal.name, animal.age, race.label
FROM animal
INNER JOIN race ON race.id = animal.id_race;

# 2
SELECT animal.name, owner.first_name, owner.last_name, owner.birthdate, owner.email
FROM owner
INNER JOIN animal on animal.id_owner = owner.id;

# 3

SELECT animal.name, color.label
FROM animal
INNER JOIN animal_color on animal_color.id_animal = animal.id
INNER JOIN color on animal_color.id_color = color.id
WHERE (color.label = "Chocolat");

# 4
SELECT owner.last_name, race.label
from owner
INNER JOIN animal on animal.id_owner = owner.id
INNER JOIN race on animal.id_race = race.id
WHERE race.label = "Chien"

# 5
SELECT owner.last_name, animal.name, color.label
FROM owner
INNER JOIN animal on animal.id_owner = owner.id
INNER JOIN animal_color on animal_color.id_animal = animal.id
INNER JOIN color on animal_color.id_color = color.id
WHERE (color.label = "Chocolat");

# 6
SELECT owner.first_name, owner.last_name, COUNT(animal.id) AS "Nombre_animaux"
FROM animal
INNER JOIN owner ON animal.id_owner = owner.id
GROUP BY owner.id;

# 7 
SELECT owner.first_name, owner.last_name, GROUP_CONCAT(animal.name SEPARATOR ' ') AS `animaux`
FROM animal
INNER JOIN owner ON animal.id_owner = owner.id
INNER JOIN race ON animal.id_race = race.id
GROUP BY owner.id;

# 8
SELECT animal.name, animal.age, CONCAT (owner.first_name, " ", owner.last_name) AS `owner`
FROM animal
INNER JOIN owner ON animal.id_owner = owner.id
ORDER BY owner;