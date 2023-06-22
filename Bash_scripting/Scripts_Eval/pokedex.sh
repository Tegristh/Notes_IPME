#!/bin/bash

# is jq_installed
jq_bin=$(which jq)
if [[ $jq_bin == "" ]]; then
    echo "Vous devez installer jq"
    exit 
fi 

if [[ $# -eq 0 ]];then
    echo "Ce scripte nécessite un nom de fichier de sortie en paramètre."
    exit
elif [[ $# -gt 1 ]];then
    echo 'Si votre nome de fichier contient un espace, veuillez le noter entre ""'
    exit
fi 

file_name=$1

pokemon_list=$(curl https://pokeapi.co/api/v2/pokemon?limit=10000 | jq '.results[].name')
echo $pokemon_list > $file_name

pokemon_inv=$(curl https://pokeapi.co/api/v2/pokemon?limit=10000 | jq '.results[].name'| sort -r)
# TODO nomage inverse du fichier
echo $pokemon_inv > tri_inverse

alphabet_sort=$(curl https://pokeapi.co/api/v2/pokemon?limit=10000 | jq '.results[].name'| sort)
echo $alphabet_sort > tri_alphabetique