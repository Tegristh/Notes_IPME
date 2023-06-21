# Les Fonctions

En Bash, vous pouvez définir et utiliser des fonctions pour regrouper un ensemble d'instructions et les exécuter lorsque vous en avez besoin. Voici comment créer et utiliser des fonctions dans un script Bash :

1. Créer une fonction :
   - Pour créer une fonction, utilisez la syntaxe suivante :

     ```bash
     nom_de_la_fonction() {
         # Instructions de la fonction
     }
     ```

   - Assurez-vous de respecter la convention de nommage des fonctions : utilisez des lettres, des chiffres et des soulignés, et évitez les caractères spéciaux ou les espaces.

2. Utiliser une fonction :
   - Pour exécuter une fonction, appelez-la par son nom (sans les parenthèses) :

     ```bash
     nom_de_la_fonction
     ```

   - Vous pouvez également passer des arguments à une fonction :

     ```bash
     nom_de_la_fonction argument1 argument2
     ```

3. Variables locales :
    - Vous pouvez définir des variables "locales" à une fonction qui n'existeront que dans le contexte
    d'exécution de la fonction grâce au mot clé "local".

   ```bash
   # Définition de la fonction
   saluer() {
       local nom=$1
       echo "Bonjour, $nom !"
   }

   # Appel de la fonction avec un argument
   saluer "Alice"
   ```

   Dans cet exemple, la fonction `saluer` est définie pour afficher un message de salutation en utilisant l'argument `nom` passé lors de l'appel. La fonction est ensuite appelée avec l'argument "Alice", ce qui affichera "Bonjour, Alice !" à l'écran.

4. Retourner une valeur :
   - Une fonction peut retourner un code de sortie (PAS une valeur) en utilisant l'instruction `return`. Par exemple :

     ```bash
     fonction_avec_retour() {
         # Instructions de la fonction
         return 42
     }

     code_de_sortie=$(fonction_avec_retour)
     echo "Résultat : $result"
     ```

     Dans cet exemple, la fonction `fonction_avec_retour` renvoie le code 42.

5. Variables spéciales :
   - Les variables spéciales, telles que `$0`, `$1`, `$#`, `$@`, `$*`, etc., sont également disponibles dans les fonctions et fournissent des informations sur l'appel de la fonction.

   - `$@` contient l'ensemble des arguments passés sous forme de tableau
   - `$*` contient l'ensemble des arguments passés sous forme de chaîne de caractères
   - `$#` contient le nombre d'arguments passés
   - `$?` contient le dernier code de sortie (0 = succès, sinon, code de l'erreur)


Les fonctions en Bash vous permettent d'organiser et de réutiliser du code, d'améliorer la lisibilité et la maintenabilité de votre script, et d'exécuter des blocs d'instructions spécifiques lorsque nécessaire.
