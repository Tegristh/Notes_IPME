# Les tableaux (Array) en Bash

En Bash, vous pouvez utiliser des tableaux pour stocker et manipuler des collections d'éléments. Voici comment créer un tableau, ajouter un élément, trouver un élément par rapport à sa position et retirer un élément :

## Créer un tableau

Pour créer un tableau en Bash, vous pouvez utiliser la syntaxe suivante :

```bash
# Déclaration d'un tableau avec des éléments
fruits=("pomme" "banane" "orange" "kiwi")
```

Dans cet exemple, un tableau appelé `fruits` est créé et initialisé avec les éléments "pomme", "banane", "orange" et "kiwi".

## Ajouter un élément

Pour ajouter un élément à un tableau existant, vous pouvez utiliser la syntaxe suivante :

```bash
# Ajouter un élément à un tableau existant
fruits+=("mangue")
```

Dans cet exemple, l'élément "mangue" est ajouté à la fin du tableau `fruits`.

## Trouver un élément par rapport à sa position

Pour accéder à un élément spécifique d'un tableau en utilisant sa position, vous pouvez utiliser l'index du tableau. L'indice commence à 0 pour le premier élément. Voici un exemple :

```bash
# Accéder à un élément spécifique d'un tableau
echo "Le deuxième fruit est : ${fruits[1]}"
```

Dans cet exemple, l'élément à la position 1 (deuxième élément) du tableau `fruits` est affiché.

## Retirer un élément

Pour retirer un élément d'un tableau, vous pouvez utiliser la commande `unset` en spécifiant l'index de l'élément à supprimer. Voici un exemple :

```bash
# Supprimer un élément d'un tableau
unset fruits[2]

# Ne garder que les éléments 0, 1 et à partir de 3
tablo=("${tablo[@]:0:2}" "${tablo[@]:3}")
```



Dans cet exemple, l'élément à la position 2 du tableau `fruits` est supprimé.

## Obtenir la longueur d'un tableau

Pour obtenir la longueur d'un tableau en Bash, vous pouvez utiliser la syntaxe `${#array[@]}`. Voici un exemple :

```bash
# Déclaration d'un tableau
fruits=("pomme" "banane" "orange" "kiwi")

# Obtenir la longueur du tableau
length=${#fruits[@]}
echo "La longueur du tableau est : $length"
```

Dans cet exemple, `${#fruits[@]}` renvoie la longueur du tableau `fruits`. La variable `length` est utilisée pour stocker cette valeur, puis elle est affichée.

## Tester si un tableau est vide

Pour tester si un tableau est vide en Bash, vous pouvez vérifier si sa longueur est égale à zéro. Voici un exemple :

```bash
# Déclaration d'un tableau vide
empty_array=()

# Vérifier si le tableau est vide
if [ ${#empty_array[@]} -eq 0 ]; then
    echo "Le tableau est vide."
else
    echo "Le tableau n'est pas vide."
fi
```

Dans cet exemple, la condition `[ ${#empty_array[@]} -eq 0 ]` vérifie si la longueur du tableau `empty_array` est égale à zéro. Si c'est le cas, le message "Le tableau est vide." est affiché. Sinon, le message "Le tableau n'est pas vide." est affiché.

Vous pouvez utiliser ces techniques pour obtenir la longueur d'un tableau et tester s'il est vide. Cela vous permet de prendre des décisions en fonction de l'état du tableau dans vos scripts Bash.

## Boucler sur une liste de fichiers

Pour boucler sur l'ensemble des fichiers, 2 solutions:


```bash
# Avec un ls simple, nous n'avons que le nom du fichier
for filename in $(ls); do
    echo $filename
done

# OU

# Exécution de la commande "ls -l" et boucle sur le résultat
# Ici on récupère plus de données mais reste encore à les extraire
ls -l | while read -r line; do
    # Extraction des données du fichier avec awk
    permissions=$(echo "$line" | awk '{print $1}')
    owner=$(echo "$line" | awk '{print $3}')
    size=$(echo "$line" | awk '{print $5}')
    filename=$(echo "$line" | awk '{print $9}')

    # Affichage des données du fichier
    echo "Fichier : $filename"
    echo "Propriétaire : $owner"
    echo "Permissions : $permissions"
    echo "Taille : $size bytes"
    echo "------------------------"
done
```
## Trouver la position d'un élément dans un tableau

```bash
index=0
position=""
search="coucou"

for element in ${tablo[@]}; do
    if [[ $element -eq $search ]]; then
        position=$index
    fi
    ((index++))
done
```
## Vérifier qu'un élément est dans un tableau ou non

Vous pouvez tester la présence d'un élément dans le tableau avec l'opérateur =~.

```bash
if [[ " ${array[*]} " =~ " ${value} " ]]; then
    # whatever you want to do when array contains value
fi

if [[ ! " ${array[*]} " =~ " ${value} " ]]; then
    # whatever you want to do when array doesn't contain value
fi
```
