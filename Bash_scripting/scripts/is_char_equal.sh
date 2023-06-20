#!/bin/bash

read -p "Entrez une chaine de caractères : " char1
read -p "Entrez une seconde chaine de caractères : " char2

if [[ $char1 == $char2 ]];then
    echo "Les deux chaines sont identiques"
else
    echo "Les deux chaines sont differentes"
fi
