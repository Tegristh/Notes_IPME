# 1.

INSERT INTO account(name, email, nickname)
VALUE (
    "Apexeurfoudu63",
    "asmenforce@hotmail.fr",
    "Apexeurfoudu63"
);

# 2.

INSERT INTO librarie(game_id, account_id, installed, game_time, last_used)
VALUE (
    (SELECT id FROM games WHERE games.name ="Apex la Légende" ),
    (SELECT id FROM account WHERE account.name = "Apexeurfoudu63" ),
    1,
    4242,
    "2023-02-18"
)

# 3.

-- SELECT 
-- account.nickname AS `Joueur`,
-- games.name AS `Jeu`,
-- (SELECT installed
--     CASE
--         WHEN installed = 0 THEN 'Non'
--         WHEN installed = 1 then 'oui'
--     END
--     FROM librarie) as `Installé O/N`,
-- (SEC_TO_TIME(librarie.game_time)) AS `Temps_passé`,
-- librarie.last_used AS `Dernière utilisation`
-- FROM librarie
-- LEFT JOIN account ON account_id = account.id
-- LEFT JOIN games ON game_id = games.id
-- WHERE account.id = 3;

SELECT 
account.nickname AS `Joueur`,
games.name AS `Jeu`,
(SELECT IF (librarie.installed = 0, "Non", "Oui")) as `Installé O/N`,
(SEC_TO_TIME(librarie.game_time)) AS `Temps_passé`,
librarie.last_used AS `Dernière utilisation`
FROM librarie
LEFT JOIN account ON account_id = account.id
LEFT JOIN games ON game_id = games.id
WHERE account.id = 3;

OR 

SELECT 
account.nickname AS `Joueur`,
games.name AS `Jeu`,
librarie.installed as `Installé O/N`,
(SEC_TO_TIME(librarie.game_time)) AS `Temps_passé`,
librarie.last_used AS `Dernière utilisation`
FROM librarie
LEFT JOIN account ON account_id = account.id
LEFT JOIN games ON game_id = games.id
WHERE account.id = 3;

# 4.

SELECT 
games.name,
GROUP_CONCAT(genre.name SEPARATOR ', ') AS `Genre(s)`
FROM games
LEFT JOIN games_genre ON games_id = games.id
LEFT Join genre ON genre_id = genre.id
GROUP BY games.name;

# 5.
SELECT 
games.name,
GROUP_CONCAT(genre.name SEPARATOR ', ') AS `Genre(s)`
FROM games
LEFT JOIN games_genre ON games_id = games.id
LEFT Join genre ON genre_id = genre.id
GROUP BY games.name
ORDER BY games.price DESC
LIMIT 1;

# 6.

SELECT 
games.name,
GROUP_CONCAT(genre.name SEPARATOR ', ') AS `Genre(s)`
FROM games
LEFT JOIN games_genre ON games_id = games.id
LEFT Join genre ON genre_id = genre.id
GROUP BY games.name
HAVING `Genre(s)` LIKE "%FPS%";

# 7.

SELECT account.nickname, SEC_TO_TIME(SUM(librarie.game_time)) AS `Total_Time_Played`
from Librarie
LEFT JOIN account ON account_id = account.id
GROUP BY account.nickname;


# 8.

SELECT 
account.nickname AS `Joueur`,
games.name AS `Jeu`,
librarie.installed as `Installé O/N`,
(SEC_TO_TIME(librarie.game_time)) AS `Temps_passé`,
librarie.last_used AS `Dernière utilisation`
FROM librarie
LEFT JOIN account ON account_id = account.id
LEFT JOIN games ON game_id = games.id
WHERE ((account.id = 3) AND (librarie.installed = 1));

# 9.
SELECT 
account.nickname AS `Joueur`,
SUM(games.price) AS `Total_library_price`
FROM librarie
LEFT JOIN account ON account_id = account.id
LEFT JOIN games ON game_id = games.id
GROUP BY account.nickname;

# 11.

SELECT 
games.name,
COUNT(librarie.game_id) AS `EXEMPLAIRES VENDUS`
from librarie
LEFT JOIN games ON game_id = games.id
GROUP BY games.name;

# 12.

SELECT
games.name,
-- COUNT(librarie.game_id) AS `EXEMPLAIRES VENDUS`,
(COUNT(librarie.game_id)*(games.price)) AS `Total_profit`
from librarie
LEFT JOIN games ON game_id = games.id
GROUP BY games.name;

# 13.
SELECT
genre.name,
COUNT(librarie.game_id) AS `Titres_Vendus`
from librarie
LEFT JOIN games ON game_id = games.id
LEFT JOIN games_genre on game_id = games.id
LEFT JOIN genre ON genre_id = genre.id
GROUP BY genre.name;

# 14.

SELECT 
games.name,
COUNT(librarie.game_id) AS `EXEMPLAIRES VENDUS`
from librarie
LEFT JOIN games ON game_id = games.id
GROUP BY games.name
ORDER BY COUNT(librarie.game_id) DESC
LIMIT 3;

# 15
SELECT
games.name,
SUM(librarie.game_time) AS `Total_Game_Time`
FROM librarie
LEFT JOIN games on game_id = games.id
GROUP BY games.name
ORDER BY `Total_Game_Time` DESC
LIMIT 3;

# 16

SELECT 
YEAR(games.published_at)AS `Year`,
GROUP_CONCAT(games.name SEPARATOR ', ') AS `List_of_games`
FROM games
GROUP BY `Year`;

# 17.
SELECT games.name, games.published_at AS `Date`
FROM games
ORDER BY games.published_at
LIMIT 1;