### Exercice 1 : ###
Sur la table cours.etudiant : 
Créer un trigger qui vérifie si une taille positive est donnée lors d'un INSERT.
Si la taille est négative, afficher un message d'erreur.

### Exercice 2 : ####
Supposons que vous ayez une table "command" avec les colonnes suivantes :
(table à créer dans une base de donnée, nommé : exo_trigger)
id ()
date (date)
montant_total (decimal)
Créez un déclencheur qui se déclenche après chaque insertion d'une nouvelle ligne dans la table "command". Ce déclencheur doit mettre à jour une table "statistique" qui contient uniquement une colonne "total_ventes" (décimal). Le déclencheur doit ajouter le montant_total de la nouvelle commande au total_ventes existant dans la table "Statistiques".
-- Vous allez devoir initialiser votre table total_ventes à 0 avant l'utilisation d'une premiere transaction.


### Exercice 3 : ###
Trigger à faire dans la table cours.etudiant
Créer une nouvelle table etudiant_history, qui va permettre de stocker toutes les informations d'un étudiant lors d'un delete.

### Exercice 4 ###
Sur la base des "voitures"
Créer un trigger lors d'un update d'une annonce (listings), ce trigger va stocker dans une nouvelle table l'ancien prix et le titre de l'annonce.

### Exercice 5 ###
Toujours sur la base des voitures
Créer un trigger qui permet lors d'un INSERT sur une annonce (listings), de stocker dans une nouvelle table la somme total des annonces en cours, ainsi que la moyenne total des kilométrages
