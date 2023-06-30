### Exercice 1 : ###
Créez une procédure stockée appelée "CalculerMoyenne" qui prend en entrée un paramètre entier "idCours" et calcule la
moyenne des notes des étudiants inscrits à ce cours. La procédure doit retourner la moyenne calculée.
Vous devez créer les tables nécéssaire :

- table cours (id, label)
- table note (id, note, etudiantName, id_cours)

### Exercice 2 : ###
Supposons que vous ayez une table "employe" avec les colonnes suivantes :
id ()
nom (chaîne de caractères)
salaire (decimal)
Créez une procédure stockée appelée "AppliquerAugmentation" qui met à jour le salaire de tous les employés en fonction
de leur augmentation. La procédure doit prendre en entrée le pourcentage d'augmentation à appliquer et mettre à jour le
salaire de chaque employé en ajoutant l'augmentation calculée.

### Exercice 3 : ###
Supposons que vous ayez une table "student" avec les colonnes suivantes :

id ()
nom (chaîne de caractères)
age (entier)
moyenne (decimal)
Créez une procédure stockée appelée "PromouvoirStudent" qui met à jour la colonne "moyenne" des étudiants en fonction de
leur âge. La procédure doit prendre en entrée l'âge minimum pour être promu et mettre à jour la moyenne de chaque
student à 20 si leur âge est supérieur ou égal à l'âge minimum requis.

### Exercice 4 : ###
En reprenant la base de donnée cours (celle avec les étudiants) :

- Créer une procédure qui va vous rendre la différence de taille entre les M et les F
- (moyenne de la taille de tout les M) - (moyenne de la taille de tout les F)
- Vous allez peut etre avoir besoin de créer des variables dans votre procédure (SELECT INTO)
- ex : CALL get_diff(@diff); SELECT @diff

### Exercice 5 ###
En reprenant la base de donnée des "voitures"
Créer une procédure qui vous permet de rendre la moyenne des prix selon le nom d'une catégorie

- Ex : CALL get_avg_from_categorie("citadine", @avg); SELECT @avg;

### Exercice 6 ###
En reprenant la base de donnée des "jeux"
Créer une procédure qui vous permet de rendre le nombre de fois qu'un jeu a été installé dans une librairie selon son
nom

- Ex : CALL get_total_installed("Apex la légende", @totalInstalled); SELECT @totalInstalled;

### Exercice 7 ###
En reprenant la base de donnée des "jeux"
Créer une procédure qui vous permet de d'avoir le nom du jeu le plus ancien
- Ex : CALL get_oldest(@name); SELECT @name;