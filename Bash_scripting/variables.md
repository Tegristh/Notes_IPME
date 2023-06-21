# Variables

## Création et usage
Dans un script bash, vous pouvez créer et utiliser des variables pour stocker des valeurs et les référencer dans votre code. Voici comment créer et utiliser des variables dans un script bash :

1. Créer une variable :
   - Pour créer une variable, attribuez une valeur à un nom de variable. Assurez-vous de ne pas laisser d'espaces autour du signe égal (`=`).

     ```bash
     variable_name="valeur"
     ```

   - Les noms de variables sont sensibles à la casse. Par exemple, `variable_name` et `Variable_Name` sont considérés comme deux variables distinctes.

2. Utiliser une variable :
   - Pour référencer la valeur d'une variable, préfixez son nom avec le signe dollar (`$`).

     ```bash
     echo $variable_name
     ```

   - Vous pouvez utiliser des variables dans des commandes, des conditions, des boucles et d'autres opérations.

3. Variable d'environnement :
   - Les variables d'environnement sont des variables spéciales qui sont déjà définies dans le système et peuvent être utilisées dans les scripts bash. Par exemple, `HOME` représente le répertoire personnel de l'utilisateur actuel.

     ```bash
     echo $HOME
     ```

4. Concaténation de variables :
   - Vous pouvez concaténer le contenu de plusieurs variables en utilisant l'opérateur de concaténation (`$variable1$variable2` ou `$variable1$variable2$variable3`).

     ```bash
     variable1="Hello"
     variable2="World"
     resultat=$variable1$variable2
     echo $resultat
     ```

     Cela affichera "HelloWorld".

5. Variable en lecture seule :
   - Vous pouvez déclarer une variable en lecture seule pour empêcher sa modification ultérieure.

     ```bash
     variable_lecture_seule="valeur"
     readonly variable_lecture_seule
     variable_lecture_seule="nouvelle valeur"  # Cela générera une erreur car la variable est en lecture seule.
     ```

6. Variables spéciales :
   - Bash fournit des variables spéciales avec des significations spécifiques. Par exemple, `$0` représente le nom du script lui-même, `$1` représente le premier argument passé au script, `$#` représente le nombre total d'arguments, etc.

     ```bash
     echo "Nom du script : $0"
     echo "Premier argument : $1"
     echo "Nombre total d'arguments : $#"
     ```

     Lorsque vous exécutez le script en fournissant des arguments, ces variables spéciales seront remplacées par les valeurs correspondantes.

C'est ainsi que vous pouvez créer et utiliser des variables dans un script bash. Les variables vous permettent de stocker des valeurs, de les manipuler et de les référencer dans votre code pour une plus grande flexibilité et automatisation.

## Variables sur plusieurs lignes
```bash
variable_name=$(cat << EOF
        C'est la ligne 1.
        C'est la ligne 2.
        C'est la ligne 3.
        EOF
        )

variable_name=$(cat <<-EOF # le - permet de conserver l'indentation
    This is indented line 1.
    This is indented line 2.
    This is indented line 3.
EOF
)
```
