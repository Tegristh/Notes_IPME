-- 1.

CREATE EVENT check_retard
ON SCHEDULE EVERY 1 DAY
STARTS "2023-06-30 00:00:00"
DO
	UPDATE tache
    SET statut = "En retard"
	HAVING (date_limite < NOW());

-- 2.

CREATE EVENT refresh_last_connection
ON SCHEDULE EVERY 1 MONTH
STARTS "2023-07-01 00:00:00"
DO
    UPDATE utilisateur
    SET derniere_connexion = NOW();

-- 3.

CREATE EVENT pokelol_censorship
ON SCHEDULE EVERY 1 MINUTE
STARTS NOW()
DO
    DELETE * FROM commentaire
    WHERE context LIKE "%pokemon%";

-- 4.

CREATE EVENT no_big_bad_guy
ON SCHEDULE EVERY 1 MINUTE
STARTS NOW()
DO
    DELETE * FROM etudiant
    WHERE ((name = "VOLDEMOR") OR (taille > 300));

-- 5.

CREATE EVENT self_spam
ON SCHEDULE EVERY 1 MINUTE
START NOW()
DO
    INSERT INTO etudiant(prenom, nom, taille, sexe)
    VALUES ("Jules", "The Best", 180, "M");

-- 6.

CREATE EVENT increase_25%
ON SCHEDULE EVERY 1 MINUTE
START NOW()
DO
    UPDATE cours_eth
    SET valeur = (valeur * 1.25);


