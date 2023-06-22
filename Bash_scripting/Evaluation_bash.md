# Evaluation

EASY
- bienvenue
- touch_sh

MEDIUM
- tri_auto

HARD
- pokedex

## bienvenue
Le script doit:
- dire bonjour à l'utilisateur courant
- on peut (pas obligé!) préciser en paramètre un autre nom
- selon l'heure, le script nous souhaite "bonjour" ou "bonsoir"
- si l'utilisateur est un sudoer, on rajoute "-sama" à son nom
- Bonus: Si l'utilisateur donné est un user du système, on lui rappelle
la shell qu'il utilise

## touch_sh
Votre script doit:
- prendre un nom en paramètre (obligatoire)
- générer un fichier portant ce nom avec l'extension .sh
- ajouter une shebang en première ligne
- rendre le fichier exécutable
- on créé également un tarball du fichier portant le même nom avec l'extension .tar
que l'on range dans ~/backup.
- ouvrir le fichier original dans nano

- BONUS: à la place, utilisez l'éditeur de texte favoris de l'utilisateur

## tri_auto
Le script doit:
- lire l'intégralité des fichiers du répertoire courant
- si un paramètre à été donné, on utilise ce paramètre en guise de répertoire cible à la place,
 il faut alors bien vérifier que ce répertoire existe.
- on va ensuite déplacer tous les fichiers du répertoire selon leur extension :

-- mp3 -> Musique
-- mp4 -> Vidéos
-- txt / pdf -> Documents
-- les autres -> ~/bazar/<extension>

Si le dossier ~/bazar n'existe pas, il faut le créer
Par exemple, si on a un fichier ".js", il faut le mettre dans ~/bazar/js.

## pokedex
Votre script doit:
- s'assurer que jq est bien installé (si vous utilisez "jq" dans votre script)
- prendre en paramètre un nom de fichier
- récupérer la liste des pokémons sur la pokéapi
- générer un fichier avec le nom donné en param contenant uniquement les noms des pokémons
- créer un second fichier donc le nom est l'inverse du nom de base
(si on a rentré fichier.txt, le nouveau fichier sera "reihcif.txt")
- ce nouveau fichier contiendra tous les pokémons mais dans dans l'ordre inversé
- enfin, créé un dernier fichier qui contient tous les pokémons triés par ordre alphabétique

ATTENTION, il faut TOUS les pokemons.

