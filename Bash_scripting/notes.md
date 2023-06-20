>20-06-23 - Maxime Montagne - Drosalys

# Script Bash

Un script bash commence par un shebang pour indiquer à la machine quel interpréteur utiliser.
```bash
#!/bin/bash
```

Sous linux il faut autoriser l'execution du code
```bash
chmod script.sh u+x
```
On peut utiliser des commandes linux. Elles seront interprétées sans tenir compte des alias comme avec l'utilisation de:
```bash
command ls
```

***
## variables:

```bash
prenom="Baptiste"
echo $prenom
echo "On peut afficher la valeur des variables $variable entre double cotes" 
```

on peut mettre le résultat d'une commande dans une variable:
```bash
# declaration
files=$(ls)

# appel de la variable
echo $files
```

***
## calculs en bash

```bash
#addition
expr 5 + 5

#soustraction
expr 5 - 5

#multiplication
expr 5 \* 5

# division
expr 5 / 5
```

```bash
# utilisation de expr
resultat=$(expr5+5)
echo $resultat

# avec (())
autre_resultat=$((5+5))
echo $autre_resultat
```

***

## input

```bash
# nom_variable = input("question")
read -p "question" nom_variable
```

***

## conditions

```bash
# syntaxe:
if [[ condition ]]
then
fi

# exemple:
if [[ $moyenne -eq 12 ]]
then
    echo "Bravo tout le monde ! Vous avez 12"
else
    echo "Vous êtes mauvais !!"
fi
```

valeurs de conditions:
- -eq : Equal (==)
- -ne : Not Equal(!=)
- -gt : Greater than (>)
- -ge : Greater or equal (>=)
- -lt : Lesser than (<)
- -le : Lesser or Equal (<=)

