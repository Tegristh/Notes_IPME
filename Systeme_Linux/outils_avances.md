# Outils Avancés

## grep
Permet de trouver du texte dans des fichiers via des expressions régulières.

-i : case incensitive
-r : recursive
-v : trouve toutes les lignes qui ne correspondent PAS à la recherche
-n : affiche le numéro de la ligne
-c : "count", compte le nombre d'occurence
-E : Expression régulière. Plus besoin d'échapper les caractères spéciaux comme |.

```sh
grep plop fichier            # Regarde si "fichier" contient "plop"
grep plop ./dossier/*       # Regarde si un des fichiers de "dossier" contient plop
grep -E "ou$|plop$" fichier        # Trouve les lignes se terminant par "ou" ou "plop"

# Avec le pipe
cat fichier | grep coucou       # Recherche coucou dans l'output de cat
ls -al | grep coucou       # Recherche coucou dans l'output de ls
```

## sed
[Tuto de DistroTube](https://www.youtube.com/watch?v=EACe7aiGczw)
Permet de remplacer des chaines de caractères.
-i case incensitive
-e expression régulière

```sh
sed -e "s/coucou/PLOP/g" fichier    # Remplace les "coucou" par des "PLOP" dans fichier
cat fichier | sed -e "s/ou/PLOP/g" # Remplace les "ou" par des "PLOP" dans l'output de cat (mais le fichier est intact).
```

## awk
[Tuto de DistroTube](https://www.youtube.com/watch?v=9YOZmI-zWok)
Outil surpuissant de traitement de texte avancé. Permet une grande précision, des déclarations de variables et executions de commandes.

Avec awk, vous avez accès à des variables:
$0 : Représente toute la ligne actuelle.
$1, $2, $3, ... : Représentent les champs individuels de la ligne, séparés par le délimiteur spécifié (par défaut l'espace).
NF : Contient le nombre de champs (ou colonnes) dans la ligne actuelle.
NR : Contient le numéro de ligne actuel.
FS : Représente le séparateur de champs (délimiteur) utilisé.
RS : Représente le séparateur de lignes utilisé.
OFS : Représente le séparateur de champs de sortie.
ORS : Représente le séparateur de lignes de sortie.
FILENAME : Contient le nom du fichier en cours de traitement.

```sh
awk pattern { action }
awk '{print $3}' monfichier.txt     # On peut lui passer un fichier
cat monfichier | awk '{print $1}'   # On peut aussi lui passer un flux

awk '{print $0}' fichier            # Affiche tout le contenu de fichier
awk '{print $1}' fichier            # Affiche la première "colonne" de fichier (premier mot de chaque ligne)

awk 'FS=";" {print $2}' fichier      # Défini ";" comme séparateur de champs au lieu de espace.

awk '$3 ~ /pattern/ {print $1 " " $2 }' fichier # Recherche de pattern
awk '$3 !~ /pattern/ {print $1 " " $2 }' fichier # Exclusion de pattern


awk 'NR > 1 { print $1, $3 }' donnees.txt # On ignore la ligne 1
awk '!/mot_a_ignorer/ { actions }' fichier.txt # On ignore les lignes contenant mot_a_ignorer
```

## tr
Transformation de caractères

```sh
tr pattern remplacement
echo abcd | tr bd 24            # Retourne a2c4
```
