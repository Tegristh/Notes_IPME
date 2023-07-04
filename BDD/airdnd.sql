-- 1. non demandé

-- 2. non demandé

-- 3.  connection en shell

mysql -u root

SHOW DATABASES;
USE airdnd;
START TRANSACTION;
INSERT INTO accessory(label)
VALUES "XBouze";

SAVEPOINT XBouze;

INSERT INTO accessory(label)
VALUES "Bwitch";

ROLLBACK TO XBouze;
COMMIT;

-- 4.
-- 4.1
SELECT listing.price, listing.title, listing.description, listing.created_at  FROM listing;

-- 4.2
SELECT user.user_name, COUNT(listing.id)
FROM listing
LEFT JOIN user on user_id = user.id
GROUP BY user.user_name;

-- 4.3
SELECT listing.title, AVG(review.rating) AS `moyenneReview`
FROM listing
LEFT JOIN review ON listing_id = listing.id
GROUP BY listing.title;

-- 4.4
SELECT user.user_name, user.email, COUNT(booking.user_id) AS `total_listing`
FROM user
LEFT JOIN booking ON user_id = user.id
GROUP BY user.user_name;

-- 4.5
SELECT 
SUM(booking.total_price) AS `profits_total`, 
AVG(booking.total_price) AS `profits_moyens`,
listing.title
FROM listing
LEFT JOIN booking ON listing_id = listing.id
GROUP BY listing.id;

-- 4.6
SELECT user.user_name, user.email, user.created_at
FROM booking
LEFT JOIN user ON user_id = user.id
GROUP BY booking.user_id;

-- 4.7
SELECT 
review.rating,
review.comment,
user.email, 
listing.title
from review
LEFT JOIN listing ON listing_id = listing.id
LEFT JOIN user on review.user_id = user.id
GROUP BY review.id
HAVING ((review.rating > 4) AND ((select LENGTH(review.comment))>25));

-- 4.8
SELECT listing.title
FROM booking
LEFT JOIN listing on listing_id = listing.id
GROUP BY listing.id
HAVING (COUNT(booking.id)>3);

-- 5. ??

-- 6. trigger

-- 6.1
DROP TRIGGER IF EXISTS increment_booking
DELIMITER //

CREATE TRIGGER increment_booking
AFTER INSERT ON booking
FOR EACH ROW
BEGIN

    UPDATE total_reservation
    SET 
    `total_reservation` = `total_reservation`+1;

END //
DELIMITER ;

-- 6.2
DROP TRIGGER IF EXISTS increment_desist
DELIMITER //

CREATE TRIGGER increment_desist
AFTER DELETE FROM booking
FOR EACH ROW
BEGIN

    UPDATE total_annulation
    SET 
    `total_annulation` = `total_anulation`+1;

END //
DELIMITER ;

--6.3

DROP TRIGGER IF EXISTS email_check
DELIMITER //

CREATE TRIGGER email_check
BEFORE INSERT TO user
FOR EACH ROW
BEGIN

    IF (LENGTH(NEW.email) < 8) OR (NEW.email NOT LIKE "%@%") THEN
        SIGNAL SQLSTATE = '45000'
        SET MESSAGE_TEXT 'email should be a least 8 char long and contain "@".';
    ENDIF;

END //
DELIMITER ;

-- 6.4

DROP TRIGGER IF EXISTS dates_check
DELIMITER //

CREATE TRIGGER dates_check 
AFTER INSERT TO booking
FOR EACH ROW
BEGIN

    IF (NEW.booking.end_date < NEW.booking.start_date) THEN
        UPDATE booking 
        SET booking.end_date = (DATE_ADD(booking.start_date, INTERVAL +1 WEEK ))
        WHERE booking.id = New.id;
    ENDIF;

END //
DELIMITER ;

-- 6.5

DROP TRIGGER IF EXISTS cost_updater
DELIMITER //

CREATE TRIGGER cost_updater
AFTER UPDATE ON booking
FOR EACH ROW
BEGIN
    UPDATE booking
    SET
    booking.total_price = (
        DATEDIFF(NEW.start_date, NEW.end_date) * (SELECT price FROM listing WHERE id = NEW.listing_id)
        )
    WHERE booking.id = NEW.id;

END //
DELIMITER;

-- 6.6

DROP TRIGGER IF EXISTS ratings_updater
DELIMITER //

CREATE TRIGGER ratings_updater
AFTER UPDATE ON reviews
FOR EACH ROW
BEGIN

    UPDATE listing 
    SET
    listing.avg_rating = (
        select AVG(review.rating from review Where id_listing = NEW.id_listing)
        )
    WHERE listing_id = NEW.id_listing;

END //
DELIMITER;

-- 6.7
DROP TRIGGER IF EXISTS deny_user_delete
DELIMITER //

CREATE TRIGGER deny_user_delete
BEFORE DELETE FROM user
FOR EACH ROW
BEGIN

    IF (
        ()
        OR
        ()
        OR
        ()
    ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = "unable to delete user 😡 "

END //
DELIMITER;

