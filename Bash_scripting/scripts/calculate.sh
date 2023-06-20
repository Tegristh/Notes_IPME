#!/bin/bash

# variables
read -p "premier nombre: " number1
read -p "Second nombre: " number2

# calculs
addition=$(($number1 + $number2))
soustraction=$(($number1 - $number2))
multiplication=$(($number1 * $number2))
division=$(($number1 / $number2))

# affichages
echo "$number1 + $number2 = $addition"
echo "$number1 - $number2 = $soustraction"
echo "$number1 * $number2 = $multiplication"
echo "$number1 / $number2 = $division"