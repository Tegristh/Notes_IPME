-- 1.

DROP TRIGGER IF EXISTS before_insert_check_size_positive;
DELIMITER //
CREATE TRIGGER before_insert_check_size_positive
BEFORE INSERT ON etudiant
FOR EACH ROW
BEGIN

    IF (NEW.taille < 0) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "La taille doit etre positive";
    END IF;

END //
DELIMITER ;

-- 2.
DROP TRIGGER IF EXISTS after_insert_stats;
DELIMITER //
CREATE TRIGGER after_insert_stats
AFTER INSERT ON command
FOR EACH ROW
BEGIN

    UPDATE statistiques
    SET 
    total_ventes = (total_ventes + NEW.montant_total);

END //
DELIMITER ;

-- 3.
DROP TRIGGER IF EXISTS after_update_save_student
DELIMITER //

CREATE TRIGGER after_delete_save_student
AFTER DELETE ON etudiant
FOR EACH ROW
BEGIN

    INSERT INTO etudiant_backup (nom, prenom, taille, sexe, old_id, created_at)
		VALUES(
				OLD.name,
				OLD.prenom,
				OLD.taille,
				OLD.sexe,
        OLD.id,
        NOW()
				);

END//
DELIMITER ;

-- 4.
DROP TRIGGER IF EXISTS after_update_listings
DELIMITER //

CREATE TRIGGER after_update_listings
AFTER UPDATE ON listings 
FOR EACH ROW
BEGIN

    INSERT INTO litings_history(
        creation_year, 
        km, 
        price, 
        description, 
        title, 
        publish_at, 
        model_id, 
        seller_id, 
        updated_at 
        )
    VALUES (
        OLD.creation_year,
        OLD.km,
        OLD.price,
        OLD.description,
        OLD.title,
        OLD.publish_at,
        OLD.model_id,
        OLD.seller_id,
        NOW()
    );

END //
DELIMITER ;

-- 5.
DROP TRIGGER IF EXISTS after_insert_update_stats
DELIMITER //

CREATE TRIGGER after_insert_update_stats
AFTER INSERT ON listings
FOR EACH ROW
BEGIN

    UPDATE statistiques
    SET 
    count_listing = COUNT(listings.id),
    avg_km = AVG(listings.km);

END //
DELIMITER ;
