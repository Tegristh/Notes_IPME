#!/bin/bash
# Compteur de nombres :
# Écrire un script qui demande à l'utilisateur un nombre initial,
# puis utilise une boucle while pour afficher tous les nombres
# de cet initial jusqu'à 0, seconde par seconde.

read -p "combien de secondes voulez-vous décompter?" timer

while [[ $timer -gt 0 ]]; do
    echo $timer
    sleep 1s
    ((timer-=1))
done