# Px_War

## concept:

Une grille de **n X m** pixels, mise à la disposition de la créativité des joueurs.

Tous les **x temps**, un utilisateur peut modifier **1 pixel** pour lui donner une couleur de son choix parmi la palette de couleurs disponibles.
Seront utilisés les dénominations suivantes pour correspondre à leur définition.


## User:

Utilisateur ou joueur

    Pseudo
    mail
    password
    Avatar


## Battle:

Événement de **durée limitée** opposant les joueurs sur une grille à la fois.


    id
    name/label
    start
    end
    id_grid


## Grid:

La grille, ou le champ de bataille est la zone de taille limitée de **n** lignes par **m** colonnes, ou les joueurs peuvent exprimer leur créativité


	id
	width
	height
	creation_date
	owner

## Cell:

pixel ou cellules, 

	id
	row
	column
	color
	last_modified
	modified_by
	grid_id





