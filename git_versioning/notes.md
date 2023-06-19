> 19-06-23 - Maxime Montagne - Drosalys
# Versioning avec Git

[Ma méthode habituelle d'installation](https://www.theodinproject.com/lessons/foundations-setting-up-git)

[apprentissage interactif](https://learngitbranching.js.org/?locale=fr_FR)

## De quoi on parle?

- Git est le logiciel de versioning installé sur l'ordinateur.
- Github et Gitlab bitbucket sont des serveurs de sauvegarde de repo Git.


## utilisation basique:

après avoir créé le dossier de travail, on l'initialise avec:

```bash
$ git init
```

- U (vert dans vsCode) Unstaged - non suivi

```bash
# connaitre le statut du dossier git
$ git status
```

```bash
$ git add <file>
```

- A (vert dans vsCode) Staged - suivis

```bash
$ git commit-m "message"
```

```bash
# Historique des commits:
$ git log

# "q" pour sortir

```
- M (orange dans vsCode) commits modifié

*** 
## Branches et déplacement
> On ne travaille jamais sur la branche principale

```bash
# consulter les branches
$ git branch 
# consulter Toutes les branches
$ git branch -a
#créer une branche
$ git branch newBranch
# se déplacer sur une branche
$ git checkout newBranch
# créer et se déplacer sur une branche
$ git checkout -b variation
# supprimer une branche (sans perdre de sauvegarde)
$ git delete variation
```

## Merge
```bash
# se positionner sur la branche principale
$ git merge newBranch

# git log plus lisible
$ git log --oneline
```

## Rebase
```bash
# se positionner sur la branche secondaire
$ git rebase main 
# ou
$ git rebase -i main
    reword = renomer
    squash = faire disparaitre
```

## Modifier et Reset
modifier un commit tant qu'il n'a pas été push
```bash
$ git commit --amend "message_oups"
```

annuler un commit non push
```bash
$ git reset HEAD~1
# soft reset
$ git reset --soft HEAD~1
# hard reset !important: perte de travail possible !!!
$ git reset --hard HEAD~1
```

## Tags

Taguer un commit:
```bash
# obtenir le nom du commit avec git log --oneline
$ git tag <nom du tag> <nom du commit>
$ git tag v1.0.0 oc8dcc
```

# Push
```bash
# premier push
$ git remote add origin https://github.com/nomutilisateur/MonProjet.git
$ git branch -M main
$ git push -u origin main

# push suivants
$ git push 
```

***

## Récupération
```bash
$ git clone <lien du repo dispo sur github>
```

```bash
git branch -f main HEAD~3
git cherry-pick