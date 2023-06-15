# Les outils modernes
Ces outils ne sont généralement PAS installés par défaut sur une machine Linux 
mais sont facile à trouver.

[Article sur les programmes CLI "indispensables"](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6)

## zsh
Une shell un peu plus puissante (meilleur auto complétion) et customisable que bash avec un fonctionnement identique.
Depuis 2023, zsh est la shell par défaut sous Mac.

```sh
sudo apt install zsh
zsh             # Pour essayer zsh, mais n'en fait pas la shell par défaut
chsh            # changer sa shell à "/usr/bin/zsh" puis redémarer la machine

# Pour customiser votre zsh, éditez le fichier ~/.zshrc
```

## fish
Une shell moderne plus puissante que bash et zsh mais au fonctionnement distinct qui
peut poser quelques problèmes aux non-initiés.
[Site officiel](https://fishshell.com/)

```sh
sudo apt install fish
fish             # Pour essayer fish, mais n'en fait pas la shell par défaut
chsh             # changer sa shell à "/usr/bin/fish" puis redémarer la machine

# Pour customiser votre fish, éditez le fichier ~/.config/fish/fish.config
```

## nerd fonts
[NerdFonts](https://www.nerdfonts.com/)
Les nerds fonts sont des polices avec icones. Vous devez paramétrer votre terminal pour qu'il utilise une NerdFont (de votre choix) si vous voulez bénéficier d'icones avec des outils comme exa ou oh-my-posh.

## exa
exa est une version plus moderne et puissante de "ls".

```sh
sudo apt install exa
exa
exa -al
exa --icons     # Affiche des icones à côté du nom des fichiers dossiers
# Pour cela, vous devez installer une police NerdFont
```

## bat (batcat)
batcat est une version plus moderne et puissante de "cat".
L'output est plus propre (couleurs pour le code, numéro des lignes...).

```sh
sudo apt install batcat     # Installation
bat fichier.txt             # Utilisation
```

## rg (ripgrep)
Variation plus puissante et moderne de grep codé en Rust.

```sh
sudo apt install ripgrep        # Installation
rg "pattern" fichier.txt        # Utilisation
```

## nvim (neovim)
Version plus moderne et customisable de Vi/Vim.
Toujours aussi délicat à manipuler, mais hautement configurable si on y passe le temps nécessaire... 
auto-completion, syntax highlightning, diagnostics... ).

```sh
sudo apt install neovim         # Installation
nvim fichier.txt                # Utilisation
```


## htop
Comme "top" mais en plus joli et intéractif.

```sh
sudo apt install htop         # Installation
htop                          # Utilisation
```

## ranger
Explorateur de fichiers dans un terminal.

```sh
sudo apt install ranger
ranger
```

## tree
Affiche dans le terminal l'arborescence des fichiers/dossiers à partir du dossier courant.

```sh
sudo apt install tree
tree
```

## neofetch
Affiche le logo de votre distribution Linux, des informations sur votre machine et la palette de couleurs utilisée par votre terminal.

```sh
sudo apt install neofetch
neofetch
```

## fzf
Pour "Fuzzy Finder".
Outil très puissance de recherche.
```sh
sudo apt install fzf
fzf                     # Le nom du fichier trouvé sera envoyé en output
fzf | xargs cat         # Le fichier trouvé sera affiché par la commande "cat"
```

## Customisation des "Prompts" de son terminal
Ces deux programmes vous permettent de customiser votre terminal.
Plus qu'un aspect esthétique, ils permettent aussi d'afficher des informations complémentaires (versions installées des langages de programmation, branche git courante etc).
[NerdFonts nécessaires !](https://www.nerdfonts.com/)

## oh-my-posh
[Site officiel](https://ohmyposh.dev/)
Codé en Go. Configuration en .json.

## starship
[Site officiel](https://starship.rs/)
Codé en Rust. Configuration en .toml.

