# Les boucles en Bash

## Boucles "For" (Pour...)

La boucle `for` est utilisée pour itérer sur une liste d'éléments prédéfinie. Voici un exemple d'utilisation de la boucle `for` pour afficher les éléments d'un tableau :

```bash
#!/bin/bash

# Déclaration d'un tableau
fruits=("pomme" "banane" "orange" "kiwi")

# Boucle for pour itérer sur les éléments du tableau
for fruit in "${fruits[@]}"; do
    echo "J'aime les $fruit"
done
```

Dans cet exemple, la boucle `for` itère sur chaque élément du tableau `fruits` et affiche le message "J'aime les ..." pour chaque élément.

## Boucles "While" (Tant que...)
La boucle `while` est utilisée pour répéter un bloc de code tant qu'une condition est vraie. Voici un exemple d'utilisation de la boucle `while` pour afficher les nombres de 1 à 5 :

```bash
#!/bin/bash

# Initialisation de la variable de compteur
count=1

# Boucle while pour afficher les nombres de 1 à 5
while [ $count -le 5 ]; do
    echo $count
    ((count++))
done
```

Dans cet exemple, la boucle `while` s'exécute tant que la condition `$count -le 5` est vraie (c'est-à-dire que la valeur de `count` est inférieure ou égale à 5). À chaque itération, le nombre est affiché et la variable `count` est incrémentée.

Ces exemples illustrent les bases de l'utilisation des boucles `for` et `while` en Bash. Vous pouvez les adapter et les modifier en fonction de vos besoins spécifiques.
