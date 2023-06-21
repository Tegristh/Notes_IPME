# Gestion des erreurs

En Bash, vous pouvez gérer les erreurs et les codes de sortie des commandes pour effectuer des actions en fonction du résultat. Voici comment vous pouvez le faire :

1. Codes de sortie :
   - Chaque commande exécutée en Bash renvoie un code de sortie qui indique si l'exécution s'est terminée avec succès ou avec une erreur. Un code de sortie de 0 signifie que la commande s'est exécutée correctement, tandis qu'un code différent de 0 indique une erreur.

   - Pour récupérer le code de sortie d'une commande, utilisez la variable `$?` juste après l'exécution de la commande. Par exemple :

     ```bash
     command_name
     exit_code=$?
     echo "Code de sortie : $exit_code"
     ```

2. Gestion d'erreurs avec `if` :
   - Vous pouvez utiliser une structure `if` pour vérifier le code de sortie d'une commande et prendre des mesures en conséquence. Par exemple :

     ```bash
     if command_name; then
         echo "La commande s'est exécutée avec succès."
     else
         echo "La commande a échoué avec une erreur."
     fi
     ```

   - Vous pouvez également utiliser l'instruction `!` pour inverser la logique et vérifier si une commande a échoué. Par exemple :

     ```bash
     if ! command_name; then
         echo "La commande a échoué avec une erreur."
     fi
     ```

3. Gestion d'erreurs avec `&&` et `||` :
   - Vous pouvez utiliser les opérateurs `&&` et `||` pour exécuter des commandes conditionnellement en fonction du code de sortie de la commande précédente.

     - `command1 && command2` : exécute `command2` uniquement si `command1` s'est terminée avec un code de sortie de 0.
     - `command1 || command2` : exécute `command2` uniquement si `command1` s'est terminée avec un code de sortie différent de 0.

     Par exemple :

     ```bash
     command1 && echo "La commande 1 s'est exécutée avec succès." || echo "La commande 1 a échoué."
     ```

4. Codes de sortie personnalisés :
   - Vous pouvez également utiliser des codes de sortie personnalisés dans vos scripts pour indiquer des erreurs spécifiques. Par convention, les codes de sortie allant de 1 à 255 sont utilisés pour signaler des erreurs, mais vous pouvez choisir les valeurs qui ont du sens pour votre script.

   - Pour définir un code de sortie personnalisé, utilisez l'instruction `exit` suivie du code de sortie. Par exemple :

     ```bash
     if [ condition ]; then
         echo "Erreur : condition non satisfaite."
         exit 1
     fi
     ```

   - Vous pouvez utiliser différentes valeurs de code de sortie pour indiquer des erreurs spécifiques ou pour gérer différents scénarios dans votre script.

La gestion des erreurs et des codes de sortie en Bash vous permet de contrôler le flux de votre script et de prendre des mesures appropriées en fonction du résultat des commandes exécutées. Cela peut être utile pour gérer les erreurs, les conditions d'échec et les scénarios d'exception dans vos scripts.
