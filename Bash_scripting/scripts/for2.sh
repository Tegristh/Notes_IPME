#!/bin/bash
# Affichage des fichiers d'un répertoire :
# Écrire un script qui utilise une boucle for pour parcourir
# tous les fichiers d'un répertoire donné et les afficher.

liste=$(ls)

for element in ${liste[@]}; do
    echo $element
done
