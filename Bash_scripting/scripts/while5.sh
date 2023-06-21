#!/bin/bash
# Lecture d'un fichier ligne par ligne :
# Écrire un script qui utilise une boucle while pour lire un fichier
# ligne par ligne et l'afficher.

ls | while read file; do
    echo $file
done