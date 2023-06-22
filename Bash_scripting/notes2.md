>21-06-23 Maxime Montagne - Drosalys

# Bash Script 2
***

## Tableaux
Les tableaux en bash sont particuliers:
```bash
fruits=("ananas" "peche" "fraise" "raisin")

# afficher tout le tableau
echo ${fruits[@]}

# afficher la valeur à l'index 2
echo ${fruits[2]}

# afficher la longueur d'un tableau
echo ${#fruits[@]}

# append une nouvelle valeur
fruits+=("pomme")

# retirer une valeur
unset fruits[1]

# ou
fruits=${fruits[@]:1}
```

***

## Boucles
```bash
for index in 1 2 3 4 5; do
    echo "Je suis dans la boucle !"
    echo $index
done

for index in {1..10}; do
    echo "je suis dans la boucle !"
    echo $prenom
done

for fruit in ${fruits[@]}; do
    echo $fruit
done

for (( i=0; i<${#fruits[@]}; i++)); do
    echo "coucou $i"
    echo ${fruits[$i]}
```
*** 
## Redirections

```bash
# redirige la sortie standard et les erreurs dans leurs logs
ls >> success.log 2>>errorlog.txt
```

***

## While

```bash
index=0
while [[ $index -le 5 ]]; do
    echo $index
    ((index++))
done

while read line ; do
    echo "coucou"
    echo $line
done < longtext.txt

ls | while read file; do
    echo $file
done
```

## Switch Case

```bash
temp=50
case $temp in
    50) echo "Il fait un peu beaucoup TROP chaud!";;
    10) echo "Il fais frais non?";;
    *) echo "tout va bien...";;
esac

case $answer in
    "oui"|"o"|"yes"|"y")
        echo "Let's go !!"
        ;;
    *)
        echo "Tampis.."
        ;;
esac

```

## Cron

```bash
# testcron.sh
#!/bin/bash
echo "coucou $(date)" >> /home/user/coucou.txt

# in shell
$ crontab -e

# add :
10 * * * * /user/scripts/testcron.sh

```
