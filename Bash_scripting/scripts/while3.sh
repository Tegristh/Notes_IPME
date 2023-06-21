#!/bin/bash
# Calcul de la somme des entiers jusqu'à un nombre donné :
# Écrire un script qui demande à l'utilisateur un nombre,
# puis utilise une boucle while pour calculer la somme des entiers
# de 1 jusqu'à ce nombre.

nombre=$1

somme=0
while [[ $nombre -gt 0 ]]; do
    ((somme+=$nombre))
    ((nombre-=1))
done

echo "La Somme des $1 nombres entiers est : $somme"