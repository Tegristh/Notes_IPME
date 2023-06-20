#!/bin/bash

# recuperation des informations:
read -p "Quel est votre prénom? " first_name
read -p "Quel est votre nom de famille? " last_name
read -p "En quelle année êtes vous né(e)? " birth_year
read -p "Dans quelle ville vivez-vous? " city

# affichage des infos

echo "bonjour, $first_name $last_name, vous êtes né(e) en $birth_year et vous habitez dans la ville : $city "
