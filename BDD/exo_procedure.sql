-- 1. 

DELIMITER //
CREATE PROCEDURE CalculerMoyenne(IN v_idCours, OUT v_moyenne)
BEGIN

	-- query to run
	SELECT AVG(note.note) INTO v_moyenne
    FROM note
    LEFT JOIN cours ON id_cours = cours.id 
    WHERE cours.id = v_idCours; 

END//
DELIMITER;

-- on appelle la procedure:
CALL display_size()

-- 2.

DELIMITER //
CREATE PROCEDURE Appliquer_Augmentation(IN v_percentage)
BEGIN

    UPDATE employe
    SET salaire = ( salaire * (1 + (v_percentage/100))); 

END //
DELIMITER;

-- 3.

DELIMITER //
CREATE PROCEDURE PromouvoirStudent(IN v_age_limite)
BEGIN 

    UPDATE student 
    SET student.moyenne = 20
    WHERE student.age > v_age_limite;

END //
DELIMITER;

-- 4. 

DELIMITER //
CREATE PROCEDURE taille_diff(OUT v_difference DECINAL(3,2))
BEGIN

    WITH
    wom as (SELECT AVG(taille) AS `moy_fem` from etudiant where (sexe = 'F')),
    man as (SELECT AVG(taille) AS `moy_hom` from etudiant where (sexe = 'M')),

    SELECT (moy_fem - moy_hom) AS `difference` INTO v_difference
    FROM wom, man;

END //
DELIMITER;

-- 5.

DELIMITER //
CREATE PROCEDURE get_avg_from_categorie(
    IN v_categorie VARCHAR(255),
    OUT v_avgPrice DECIMAL(10,2) 
)
BEGIN

    SELECT AVG(listings.price) INTO v_total_installed
    FROM listings
    LEFT JOIN models ON model_id = models.id
    LEFT JOIN categories ON category_id = categories.id
    WHERE categories.label = v_categorie;

END //
DELIMITER;

-- 6.

DELIMITER //
CREATE PROCEDURE get_total_installed(
    IN v_game_name VARCHAR(255),
    OUT v_total_installed INT 
)
BEGIN

    SELECT COUNT(librarie.game_id) AS v_total_installed
    FROM librarie
    LEFT JOIN games on game_id = games.id
    WHERE games.name = v_game_name;

END //
DELIMITER;

-- 7.

DELIMITER //
CREATE PROCEDURE get_oldest(
    OUT v_name VARCHAR(255)
    )
BEGIN
    SELECT games.name into v_game_name
    FROM games
    ORDER BY launched_at 
    LIMIT 1;
END //
DELIMITER;