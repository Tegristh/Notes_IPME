#!/bin/bash

read -p "Entrez un chemin de fichier : " file

if [[ -f $file ]];then
    echo "le fichier se trouve bien à l'adresse : $file "
else
    echo "ce fichier n'existe pas"
fi 
