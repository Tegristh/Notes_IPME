#!/bin/bash
# Copie de fichiers avec une extension spécifique :
# Écrire un script qui utilise une boucle for pour parcourir 
# tous les fichiers avec une extension donnée dans un répertoire, 
# puis les copie dans un répertoire de destination.

extension=$1
destination=$2
selection=$(ls | grep $extension)

for element in ${selection[@]}; do
    cp $element $destination
done

