#!/bin/bash

if [[ -f /bin/$1 ]];then
    $1
else
    sudo apt install $1
fi 
