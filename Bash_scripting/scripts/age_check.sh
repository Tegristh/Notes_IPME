#!/bin/bash

read -p "Quel est votre age? " user_age

if [[ $user_age -lt 18 ]];then
    echo "Accès refusé, revenez quand vous aurez atteint la majorité!"
else
    echo "Bienvenue dans le bar!"
fi
