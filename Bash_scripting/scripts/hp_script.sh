#!/bin/bash

# Récupération des données de l'api
url="https://hp-api.onrender.com/api/characters"
data=$(curl $url)
echo $data > hp.json

# récupération de la liste des personnages.
personages=$(jq '.[].name' hp.json )
echo $personages> hp_personnages.txt

# récupération de la liste des personnages encore en vie.
personages2=$(jq 'map({name :.name, alive: .alive}) | map(select(.alive == true))' hp.json )
echo $personages2 > test.txt
echo $(jq '.[].name' test.txt ) > alive_personnages.txt


