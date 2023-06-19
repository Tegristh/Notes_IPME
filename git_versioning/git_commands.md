# Git Commands

## Ce que vous allez faire 99% du temps 👍
```
    git add .                                   <- pour "stage" vos changements
    git commit -m "Description du commit"       <- pour créer le commit en local
    git push                                    <- pour envoyer le commit sur le repository distant (GitLab, GitHub...)
```

## OSKUR je suis bloqué dans mon terminal !!!!
Dans ce cas vous êtes surement rentré dans un éditeur Linux Vim par mégarde !
Cela arrive avec certaines commandes de Git.
Vous devriez avoir ":" écrit en bas du terminal.
Faites "q" pour "quitter" l'editeur.

Si vous avez fait une fausse manip et allé trop loin essayez : 
```
    ESC     puis     :q!
```
Cela devrait forcer la sortie.

## Status

1. Vérifier s'il y a des fichiers/des changements depuis le dernier commit (HEAD).

```
    git status
```

## Log
Voir la liste des commits 
```
    git log
```
Voir les commits avec des infos un peu plus détaillés
```
    git log --stat
```
Faire une recherche de commit.
```
    git log -S "<recherche>"
```

Afficher l'historique des commits et des branches de manière visuelle
```
    git log --graph --decorate --oneline
```

Voir l'historique des actions effectuées.
```
    git reflog
```

## Branch
Créer une nouvelle branche.
```
    git branch manouvellebranche
```
Déplacer sa HEAD (cad, SE déplacer) sur une branche ou un commit
```
    git checkout <branch>
    git checkout <commit>
```
Créer une branche ET checkout dessus en même temps
```
    git checkout -b nouvellebranche
```
Supprimer une branche locale
```
    git branch -d <nom de la branche>
```
Récupérer une branche distante
```
    git branch <nom de la branche locale> <remote>/<nom de la branche distante>
    ou
    git checkout -b <nom de la branche locale> <remote>/<nom de la branche distante>

    exemple:
    git checkout -b coucou origin/coucou
```

Supprimer une branche distante
```diff
- ATTENTION avec ça !!!
```
```
    git push -d <nom du remote> <nom de la branche>
```

Obtenir des infos plus completes sur les branches
```
    git branch -v
```
Obtenir des infos encore plus completes sur les branches
```
    git branch -vv
```

Efface les branches remote pour lesquelles nous n'avons pas d'équivalent en local
```
    git remote update --prune
```

Bouger une branche sur un commit.
```
    git branch -f <branch à bouger> <commit de destination>
```


# Diff
Voir la différence entre les fichiers actuels et le dernier commit
```
    git diff
```

Voir la différence entre deux commits
```
    git diff <commit1> <commit2>
```

## Cherry-pick 
"Déplacer" un commit sur une autre branche
```
    git cherry-pick <commit>
```
mais fait juste une copie. Ne supprime pas l'original

## Clean

Supprimes les "untracked" directory (d) et/ou files (f)
```
    git clean -df
```

## Add

"Staging" : ajouter un changement
```
    git add <nom_du_fichier.ext>
```

Pour ajouter TOUS les fichiers
```
    git add .
```

## Commit
On réalise un "commit" de nos changement pour en faire une sauvegarde
```
    git commit -m "mon message"
    git commit -am "mon message"
```
L'option -am permet de "Stage" (add) automatiquement les fichiers déjà "tracked" (suivis) par git.
Si vous avez ajouté de nouveaux fichiers depuis le derniers commit, alors il faudra forcément d'abord des "add" manuellement car
le "commit -am" ne les prendra pas en compte.

Renommer le dernier commit
```
    git commit --amend
    git commit --amend -m "nouveau message"
```
```
    git commit --amend <file>
```

## Fetch
Permet de récupérer les informations sur le repository distant.
N'applique aucun changement à notre travail local.
```
    git fetch
```

## Pull
Mélange entre "fetch" et "merge" : on récupère les infos distantes
et dans la foulées, mergeons avec notre version locale.
Cela permet de récupérer ce qu'il y a sur le serveur.
```
    git pull
```
Plutôt que de merger, on peut demander à passer par un rebase à la place.
```
    git pull --rebase
```
### Stash
"Mettre de côté" les derniers changements. 💾
```
    git stash
```

Ré-appliquer un stash.
    Par défaut on récupère le plus récent mais on peut préciser.
```
    git stash apply (<id du stash>)
```

Appliquer un stash ET le supprimer dans la foulée
```
    git stash pop (<id du stash>)
```

Obtenir la liste des derniers stash
```
    git stash list
```

Supprimer un stash ❌
```
    git stash drop <id du stash>
```

Supprimer TOUS les stashs ❌❌❌
```
    git stash clear
```


## Revert
Créer un nouveau commit dont le but est d'annuler les effets d'un commit précédent (sans le supprimer)
```
   git revert <commit>
```
Revert dernier commit
```
   git revert HEAD
```

## Reset
```diff
- Uniquement pour corriger des grosses bourdes ! Attention aux pertes de données !
- On ne reset PAS des commit remote (distants).
```
Supprime le dernier commit mais conserve les changements en "staged"
```
    git reset --soft <commit>
```
Supprime le dernier commit mais les changements ne sont pas "staged"
```
    git reset <commit>
```
Supprime le dernier commit ainsi que les changements correspondants
```
    git reset --hard <commit>
```

Permet de repartir "clean" sur une branche remote
```
    git reset --hard origin/<branch>
```

## Alias
```diff
- FORTEMENT déconseillé ! Commencez par déjà bien maitriser l'outil avant de vous amusez à créer des alias customs !!
```
Se créer un alias personalisé
```
    git config --global alias.ac '!git add -A && git commit -am'
```

## Tag
Permet de créer un "tag" pour un commit (le nommer)
```diff
- A utiliser avec parcimonie ! Seuls les commits "majeurs" doivent être "taggés" et facilement identifiable.
- Par exemple on tag généralement les "versions" qui passeront sur serveurs test ou en production
```
```
    git tag <NAME>
```

## Bisect
```diff
- Très puissant mais difficile à manipuler.
```
Permet de rechercher un bug parmis plusieurs commits
```
    git bisect start
```

Signaler que le bug n'est pas dans cette version.
```
    git bisect good
```

Signaler que le bug que l'on cherche est présent dans cette version
```
    git bisect bad
```

## Exercices en Lignes
[W3 School](https://www.w3schools.com/git/exercise.asp)
[Git Branching](https://learngitbranching.js.org/?locale=fr_FR)
[Solutions de Git Branching](https://gist.github.com/CraftingGamerTom/d334740303b647339b00875d27d38d34)
