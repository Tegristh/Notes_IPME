#!/bin/bash

# gestion des arguments
if [[ $# -eq 0 ]]; then
    user=$USER
else
    user=$1
fi

# gestion de l'horaire
curr_hour=$(date +"%H")
if [[ $curr_hour -gt 17 ]];then
    salutation="Bonsoir,"
else
    salutation="Bonjour,"
fi

# gestion sudoers
# ctrl+v from https://ostechnix.com/find-sudo-users-linux-system/
sudoer_array=$( grep '^sudo:.*$' /etc/group | cut -d: -f4)

# for user in ${sudoer_array[@]}; do
#     echo $user
# done 

if [[ " ${sudoer_array[*]} " =~ " ${user} " ]];then
    sama="-sama"
else
    sama=""
fi

# TODO: bonus

echo $user_array

echo "$salutation $user $sama !"