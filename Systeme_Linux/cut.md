# Cut
La commande `cut` est utilisée pour extraire des parties spécifiques de chaque ligne d'un fichier ou d'une sortie de commande. Elle est souvent utilisée pour traiter des fichiers texte structurés, où vous pouvez sélectionner des champs ou des colonnes en fonction de délimiteurs.

Voici quelques options couramment utilisées avec la commande `cut` :

- **-d** : spécifie le délimiteur à utiliser. Par défaut, l'espace est utilisé comme délimiteur.
- **-f** : spécifie les champs à extraire en utilisant leur numéro. Les champs sont séparés par le délimiteur spécifié.
- **--complement** ou **-c** : sélectionne les caractères qui ne sont pas spécifiés plutôt que ceux qui le sont.

Voici quelques exemples d'utilisation de la commande `cut` :

1. **Exemple 1** : Supposons que vous ayez un fichier texte appelé "contacts.txt" contenant des informations de contact séparées par des virgules :

   ```
   John Doe,555-1234,john@example.com
   Jane Smith,555-5678,jane@example.com
   ```

   Pour extraire uniquement les noms (premier champ) de chaque ligne, vous pouvez utiliser la commande suivante :

   ```bash
   cut -d ',' -f 1 contacts.txt
   ```

   Résultat :

   ```
   John Doe
   Jane Smith
   ```

2. **Exemple 2** : Supposons que vous ayez une sortie de commande contenant des colonnes séparées par des espaces :

   ```
   PID   CPU%   MEM%
   123   10.2   25.3
   456   5.7    12.8
   ```

   Pour extraire uniquement la colonne du pourcentage de CPU, vous pouvez utiliser la commande suivante :

   ```bash
   cut -d ' ' -f 2 output.txt
   ```

   Résultat :

   ```
   CPU%
   10.2
   5.7
   ```

Maintenant, voici quelques exercices pour pratiquer l'utilisation de la commande `cut` :

1. Exercice : Vous avez un fichier texte appelé "employes.txt" contenant des informations des employés dans l'ordre suivant : nom, poste, salaire. Extraire uniquement la colonne des postes.

2. Exercice : Vous avez un fichier CSV ("data.csv") contenant des données avec des virgules comme délimiteurs. Extraire les deux premières colonnes de chaque ligne.

3. Exercice : Vous avez une sortie de commande contenant des colonnes séparées par des tabulations ("\t") :

   ```
   ID\tNom\tAge\tVille
   1\tJohn\t25\tNew York
   2\tJane\t30\tParis
   ```

   Extraire uniquement les colonnes ID et Ville.

Solution :

1. Solution : Utilisez la commande suivante pour extraire la colonne des postes :

   ```bash
   cut -d ' ' -f 2 employes.txt
   ```

2. Solution : Utilisez la commande suivante pour extraire les deux premières colonnes :

   ```bash
   cut -d ',' -f 1,2 data.csv
   ```

3. Solution : Utilisez la commande suivante pour extraire les colonnes ID et Ville :

   ```bash


   cut -d '\t' -f 1,4 output.txt
   ```

Ces exercices devraient vous aider à vous familiariser avec l'utilisation de la commande `cut` et à pratiquer l'extraction de parties spécifiques de fichiers ou de sorties de commande.
