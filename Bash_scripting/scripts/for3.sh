#!/bin/bash
# Calcul de la somme des nombres :
# Écrire un script qui demande à l'utilisateur d'entrer une série
# de nombres, puis utilise une boucle for pour calculer la somme 
# de ces nombres.

liste=()
somme=0

for index in {1..10}; do
    read -p "Quel chiffre voulez vous ajouter? : " new
    liste+=($new)
done

for element in ${liste[@]};do
    somme=$(($somme+$element))
done

echo $somme