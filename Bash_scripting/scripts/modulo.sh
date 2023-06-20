#!/bin/bash

read -p "Entrez un nombre : " number

modu=$(($number%2))

if [[ $modu -eq 0 ]]; then
    echo "C'est un nombre Pair"
else
    echo "Ce n'est pas un nombre pair!"
fi 
