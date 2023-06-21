#!/bin/bash
# Saisie continue d'un texte :
# Écrire un script qui demande à l'utilisateur de saisir du texte,
# et utilise une boucle while pour afficher le texte tant que
# l'utilisateur continue à en saisir.

full_txt=""
old_txt=""
read -p "Saisissez du texte : " new_txt


while [[ $new_txt != "" ]]; do
    full_txt+=$old_txt
    full_txt+=" "
    old_txt=$new_txt
    read -p "Saisissez du texte : " new_txt
done

full_txt+=$old_txt
ful_txt+=" "
echo $full_txt

