INSERT INTO owner(first_name, last_name, birthdate, email)
VALUE (
    "John", 
    "Caljbeut",
    "1980-01-01",
    "JCaljbeut@cartoontrash.con"
),(
    "Terry",
    "Pratchett",
    "1950-01-01",
    "TPratchett@Ankmorpork.uk"
),(
    "Mendax",
    "De Biais",
    "1980-01-01",
    "AcerMendax@tronchedebiais.zet"
),(
    "Roger",
    "Sradja",
    "1982-07-16",
    "rogerroublon@devIsFun.net"
),(
    "Beurk",
    "Moah",
    "1970-08-17",
    "Beurk@halfmanhalfdog.shtuss"
);

INSERT INTO race(label)
VALUE
("Malinois"),
("St Bernard"),
("Levrier"),
("Bobtail"),
("Rotweiller");

INSERT INTO animal(name, age, id_race, id_owner)
VALUE(
    "Jack",
    5,
    11,
    11
),(
    "Rincevent",
    8,
    13,
    12
),(
    "Arthur",
    10,
    14,
    15
),(
    "height",
    10,
    11,
    14
),(
    "vledtapas",
    4,
    12,
    13
),(
    "zolux",
    3,
    15,
    15
),(
    "crystal",
    4,
    13,
    14
),(
    "bijou",
    12,
    15,
    12
),(
    "kifouett",
    12,
    15,
    11
),(
    "chicot",
    13,
    12,
    13
);

INSERT INTO color(label)
VALUE 
("Noir"),
("Blanc"),
("Chocolat"),
("Marron"),
("Jaune"),
("Tabby"),
("Ecaille");

INSERT INTO animal_color(id_animal, id_color)
VALUE
(51, 11),
(51, 8),
(52, 10),
(52, 9),
(53, 14),
(53, 12),
(54, 13),
(54, 8),
(55, 10),
(55, 11);
