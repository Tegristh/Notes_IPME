-- 1. Un vendeur, Mr Raymond DUVAL, habitant à Ceyrat, ayant pour e-mail rduval@gmail.com et 
-- comme numéro de téléphone 0655206895 souhaite créer un compte afin de publier une 
-- annonce.

INSERT INTO sellers(last_name, first_name, email, phone_number, location)
VALUES(
    "Duval",
    "Raymond",
    "rduval@gmail.com",
    "0655206895",
    "Ceyrat"
)

-- 2. Raymond souhaite maintenant vendre son véhicule : une Peugeot 206 de l'année 2005 (citadine),
-- ayant 95000 km au compteur, au prix de 5000 €. Il crée une annonce sur le site.

INSERT INTO listings( creation_year, km, price, description, title, publish_at, model_id, seller_id)
VALUES (
    "2005-01-01",
    95000,
    5000.00,
    "Lorem Ipsum...",
    "Peugeot 206",
    NOW(),
    (SELECT id FROM models WHERE models.name = "206" ),
    (SELECT id FROM sellers WHERE ((sellers.last_name = "Duval") AND (sellers.first_name = "Raymond")))
);

-- 3. Cédric cherche une voiture d'occasion et arrive sur le site. 
-- Il souhaite afficher toutes les annonces de voitures à vendre. 
-- Les annonces contiennent les informations suivantes : marque, 
-- modèle, catégorie, année de construction, kilométrage, prix, 
-- description, localisation, nom du vendeur, date de publication.

SELECT 
brands.name AS `marque`,
models.name AS `modèle`,
categories.name AS `catégorie`,
listings.creation_year, 
listings.km, 
listings.price, 
listings.description, 
sellers.location, 
sellers.last_name, 
sellers.first_name, 
listings.publish_at
FROM listings
Left JOIN models ON models.id = model_id
LEFT JOIN brands on brands.id = brand_id
LEFT JOIN categories ON categories.id = category_id
LEFT Join sellers ON sellers.id = seller_id;

-- 4. On souhaite faire une pagination et afficher 20 annonces par page. 
-- Modifier la requête précédente pour afficher les annonces de la 
-- première page que Cédric est en train de visionner

SELECT 
brands.name AS `marque`,
models.name AS `modèle`,
categories.name AS `catégorie`,
listings.creation_year, 
listings.km, 
listings.price, 
listings.description, 
sellers.location, 
sellers.last_name, 
sellers.first_name, 
listings.publish_at
FROM listings
Left JOIN models ON models.id = model_id
LEFT JOIN brands on brands.id = brand_id
LEFT JOIN categories ON categories.id = category_id
LEFT Join sellers ON sellers.id = seller_id
ORDER BY listings.publish_at
LIMIT 20;

-- 5. Cédric va sur la 2e page. Afficher les annonces de la deuxième page.

SELECT 
brands.name AS `marque`,
models.name AS `modèle`,
categories.name AS `catégorie`,
listings.creation_year, 
listings.km, 
listings.price, 
listings.description, 
sellers.location, 
sellers.last_name, 
sellers.first_name, 
listings.publish_at
FROM listings
Left JOIN models ON models.id = model_id
LEFT JOIN brands on brands.id = brand_id
LEFT JOIN categories ON categories.id = category_id
LEFT Join sellers ON sellers.id = seller_id
ORDER BY listings.publish_at
LIMIT 20, 20;

-- 6. Sur le site de vente d'occasion, on souhaite afficher les marques 
-- avec le nombre de voitures total en vente pour chacune d'elle. Faire 
-- d'abord la requête permettant d'afficher le nombre de voitures Renault 
-- en vente.

SELECT brands.name, COUNT(listings.id) as `Total_car`
FROM listings
Left JOIN models ON models.id = model_id
LEFT JOIN brands on brands.id = brand_id
GROUP BY brands.name;

-- 7. Cédric souhaite acheter une voiture Renault citadine ayant moins de 
-- 100 000km au compteur. Il souhaite filtrer les annonces et afficher le 
-- résultat de sa recherche par date de publication de la plus récente à 
-- la plus ancienne.

SELECT 
brands.name AS `marque`,
models.name AS `modèle`,
categories.name AS `catégorie`,
listings.creation_year, 
listings.km, 
listings.price, 
listings.description, 
sellers.location, 
sellers.last_name, 
sellers.first_name, 
listings.publish_at
FROM listings
Left JOIN models ON models.id = model_id
LEFT JOIN brands on brands.id = brand_id
LEFT JOIN categories ON categories.id = category_id
LEFT Join sellers ON sellers.id = seller_id
WHERE (
    (brands.name = "Renault")
    AND
    (categories.name = "citadine")
    AND
    (listings.km < 100000)
    )
ORDER BY listings.publish_at DESC
LIMIT 20, 20;

-- 8. Cédric a un budget de 9000 € max, et ne souhaite pas mettre moins de
-- 5000 €. Modifier la requête précédente

SELECT 
brands.name AS `marque`,
models.name AS `modèle`,
categories.name AS `catégorie`,
listings.creation_year, 
listings.km, 
listings.price, 
listings.description, 
sellers.location, 
sellers.last_name, 
sellers.first_name, 
listings.publish_at
FROM listings
Left JOIN models ON models.id = model_id
LEFT JOIN brands on brands.id = brand_id
LEFT JOIN categories ON categories.id = category_id
LEFT Join sellers ON sellers.id = seller_id
WHERE (
    (brands.name = "Renault")
    AND
    (categories.name = "citadine")
    AND
    (listings.km < 100000)
    AND
    (listings.price BETWEEN 5000 AND 9000)
    )
ORDER BY listings.publish_at DESC
LIMIT 20, 20;

-- 9. L'administrateur du site web souhaite mettre en place un système 
-- de suppression automatique des annonces vieilles de plus de 2mois. 
-- Créer la requête de suppression de ces annonces.

DELETE  * FROM listings
WHERE listings.publish_at < DATE_ADD(NOW(), INTERVAL -2 MONTH);


-- 11. On souhaite connaître le prix moyen d'une voiture citadine 
-- ayant moins de 5 ans.

SELECT AVG(listings.price) 
FROM listings
WHERE 
(listings.creation_year > (DATE_ADD(NOW(), INTERVAL -5 YEAR)) );