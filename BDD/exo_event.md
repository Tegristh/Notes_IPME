Pour exo 1, 2, 3, 6, créer vous une base nommé exo_events
### Exercice 1 : ###
Supposons que vous ayez une table "tache" avec les colonnes suivantes :

id ()
description (chaîne de caractères)
date_limite (date)
statut (chaîne de caractères)
Créez un événement (event) qui se déclenche chaque jour à minuit et met à jour le statut des tâches dont la date limite est dépassée. Le statut de ces tâches doit être mis à "En retard".


### Exercice 2 : ###
Supposons que vous ayez une table "utilisateur" avec les colonnes suivantes :

id ()
nom (chaîne de caractères)
date_inscription (date)
derniere_connexion (datetime)
Créez un événement (event) qui se déclenche chaque mois et met à jour la colonne "derniere_connexion" de tous les utilisateurs avec la date et l'heure actuelles.

### Exercice 3 : ###
Supposons que vous avez une table "commentaire" avec les colonnes suivantes : 
id ()
content (text)
Créer un événement (event) qui se déclenche toutes les minutes et qui supprime un commentaire si le mot "pokemon" est dans le content.


### Exercice 4 : ###
Sur la table étudiant, créer un event qui passe toutes les minutes et qui permet de supprimer de la base tous les étudiant dont le nom est Voldemort ou les étudiant de plus de 300cm.

### Exercice 5 : ###
Sur la table étudiant créer un event qui permet d'inserer en base toute les minutes un étudiant qui s'appel Jules, The Best, de sexe M, mesurant 180 cm

### Exercice 6 : ###
Créer une table cours_eth qui va juste contenir un column valeur DECIMAL(2, 0), mettez de base une valeur à 10,00;
Créer un events sur cette table qui vous permet d'augmenter sa valeur de 25% toute les minutes.