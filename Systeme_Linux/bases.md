# Les commandes de base



## Navigation

### cd
Pour "change directory".
Permet de se déplacer de dossier en dossier.

```sh
cd destination                  # On entre dans le dossier destination
cd /destination/absolue/ici

cd ~                            # Retour à la "home" de l utilisateur
cd                              # Idem
cd /                            # Retour à la racine
cd -                            # Retour au dossier précédent (PAS forcément parent)

```

### ls

Afficher les fichiers contenu dans le repertoire courant (défaut) ou le répertoire indiqué.

```sh
ls 
ls -l       # --long Liste verticale avec plus d'informations
ls -a       # --all Voir tous les fichiers et dossiers, même cachés
ls -al      # Combinaison des deux switchs ci-dessus
ls -lh       # Pour "Human readable", affiche le poids des fichiers en Ko, Mo, Go selon le cas
ls --color  # Ajoute des couleurs au résultat

ls /etc     # Affiche le contenu du dossier /etc, même si je me trouve ailleurs
```

### echo
Affiche du texte dans le terminal (génère un output de texte).

```sh
echo Bonjour
echo "Je suis une phrase." # Utilisez des guillemets pour les phrases
```

### pwd 
Pour "Print working directory"
Affiche votre position actuelle sur la machine.
```sh
pwd         # /home/moi
```

### find
Permet de trouver un fichier ou dossier dans un repertoire donné.

```sh
find . -type f -name "*.mp3"      # Trouve tous les fichiers .mp3 se trouvant dans le dossier courant

find / -type d -name "important*" #Trouve tous les dossiers commençant par "important" sur toute la machine
```

## Aide et informations

### whoami
Donne le nom de l'utilisateur courant.

### which
Vous indique où se trouve la commande.

```sh
which ls        # /usr/bin/ls
```

### whereis
Vous indique où se trouve toutes les versions d'une commande.

```sh
whereis ls      # ls: /usr/bin/ls /usr/share/man/man/ls.1.gz
```

### man
Pour "manuel"
Affiche la documentation pour une commande donnée.

```sh
man ls      # Explique comment utiliser la commande "ls"
```

### whatis
Donne une explication courte sur une commande donnée.
```sh
whatis ls   # Explique à quoi sert la commande "ls"
```

## Lecture de fichiers

### cat
Pour 'conCATénate'.
Affiche le contenu d'un fichier.
En réalité peut aussi concater des fichiers entre eux.


```sh
cat monfichier.txt      # Affiche le contenu du fichier
cat fichier1.txt fichier2.txt   # Affiche le contenu des 2 fichiers
```

### less
Affiche une partie du contenu du fichier avec possibilité de scroller.

```sh
less fichier
```

### head
Affiche le début d'un fichier.
On peut préciser le nombre de lignes.
```sh
head fichier
head -5 fichier     # Affiche seulement 5 lignes
```

### tail
Affiche la fin d'un fichier
On peut préciser le nombre de lignes.
```sh
tail fichier
tail -5 fichier     # Affiche seulement 5 lignes
```

## Manipulation de fichiers

### touch
Permet de créer un ou plusieurs fichiers

```sh
touch nom-du-ficher
touch fichier1.txt fichier2.txt
touch fichier{1..10}.txt    # Créer fichier1.txt, fichier2.txt ... fichier10.txt
```

### mkdir
Pour "make directory".
Permet de créer un ou plusieurs dossiers.

```sh
mkdir monDossier
```

### mv
(Move) Déplace un fichier ou un dossier
Permet aussi de renommer un fichier si on spécifie un nouveau nom

```sh
mv fichier destination/
mv fichier meme_fichier_avec_un_nouveau_nom
mv fichier destination/meme_fichier_avec_un_nouveau_nom
```

On peut aussi déplacer plusieurs fichiers à la fois
```sh
mv fichier1 fichier2 fichier3 destination
mv *.txt destination
```
La dernière commande permet ici de déplacer tous les fichiers .txt vers le dossier de destination.

### cp
Pour "copy".
Fait une copie du ficher spécifié.

```sh
cp fichier1 fichier1copié
```

### rm
Pour "remove".
Supprime un ou plusieurs fichier/dossiers.
ATTENTION: pas de corbeille ! Les fichiers sont supprimés directement !

```sh
rm fichier1
rm fichier1 fichier2
rm -r dossier           # L'option "recursive" est obligatoire pour supprimer un dossier
rm -f fichierImportant  # -f permet de forcer l'exécution de la commande
rm -i   pas_sur.txt     # -i demandera confirmation avant suppression

rm -rf /                # DANGER!! Vous pouvez dire adieu à votre machine... Ne faites jamais ça!
```

### Comparaison de fichiers

### cmp
Pour "compare".
Vérifie si deux fichiers sont identiques.

### diff
Pour "différence".
Voir les différences entre plusieurs fichiers.


## Etat du disque dur

### df
Voir l'espace utilisé sur le disque.

```bash
df
df -h # Le switch -h ('human') permet d'avoir un retour plus lisible.
```

### free
Comme df, mais affiche l'espace libre.

```bash
free
free -h # Le switch -h ('human') permet d'avoir un retour plus lisible.
```

### shred
S'assure qu'un fichier soit "déchiquetté" et rendu parfaitement illisible, même après suppression.

### ps
"Processes"
Affiche les processus en cours d'execution.

### kill
Permet de "tuer" un processus en renseignant sont Pid (process id).

