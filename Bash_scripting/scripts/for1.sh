#!/bin/bash
# Affichage des éléments d'un tableau : 
# Écrire un script qui définit un tableau de noms et utilise une boucle for 
# pour afficher chaque nom du tableau.

fruits=("pomme" "poire" "abricot" "cerise")

for fruit in ${fruits[@]}; do 
    echo $fruit
done
