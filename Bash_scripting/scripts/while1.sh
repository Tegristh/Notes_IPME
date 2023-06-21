#!/bin/bash
# Ordinateur inquiet :
# Écrire un script qui demande à l'utilisateur si il va bien.
# Tant que l'utilisateur ne répond pas "oui",
# l'ordinateur doit continuer de lui demander si ça va mieux.

worried=true
while [[ $worried == true ]] ; do
    read -p "Bonjour Utilisateur, allez vous bien?" answer
    if [[ $answer == "oui" ]]; then
        worried=false
        echo $worried
    fi
    echo $worried
donec