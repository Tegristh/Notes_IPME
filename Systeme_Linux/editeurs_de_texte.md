# Editeurs de texte
Linux possède des éditeurs de texte accessible directement depuis un terminal.
C'est particulièrement pratique quand vous devez éditer des fichiers sur une serveur.

## nano
Installé par défaut sur toutes les machines, Nano a l'avantage d'être très simple
d'utilisation.

## vi / vim / nvim
Editeur de texte en terminal très difficile à manipuler. Les versions modernes proposent
un vaste écosystême de plugins ce qui en fait un outil hautement customisable.
Dans Vim, vous êtes de base en mode "normal".
Pour écrire, vous devez d'abord passer en mode "insert" (touche "i", "a" ou "o").
Pour revenir en mode "normal", appuyez sur Echap.

Quelques commandes utiles:
```sh
hjkl        # Pour déplacer le curseur (Gauche, Bas, Haut, Droite)
w           # Pour se déplacer sur le premier character du mot suivant
b           # Pour se déplacer sur le premier character du mot précédent
yy          # Pour copier ("yank") la ligne actuelle
x           # Pour supprimer le caractère sous le curseur.
p           # Pour coller

# Modes
i / a / o   # Pour rentrer en mode "Insert"
v           # Pour rentrer en mode "Visual"
:           # Pour rentrer en mode "Command"
Echp        # Pour revenir en mode "Normal"

```

Pour quitter Vim, revenez en mode "normal", puis lancez une de ces commandes :
```sh
:q!         # Pour forcer à quitter sans sauvegarder
:wq         # Pour sauvegarder et fermer Vim
```

Si Vim est installé de base sur les machines Linux, ce n'est pas le cas de Neovim.
