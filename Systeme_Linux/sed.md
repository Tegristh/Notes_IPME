# Introduction à sed
Sed est une commande en ligne de commande utilisée pour éditer et transformer du texte. Le nom "sed" est l'abréviation de "stream editor", car il traite les flux de texte en effectuant des modifications basées sur des règles spécifiées.

## Structure de base d'une commande sed
La structure de base d'une commande sed est la suivante :

```bash
sed options 'commande' fichier
```

- `options` : représente les options utilisées pour modifier le comportement de sed. Certaines options couramment utilisées incluent `-i` (modification du fichier d'entrée), `-e` (exécution de plusieurs commandes sed), etc.
- `commande` : représente la commande ou les commandes sed à exécuter. Les commandes sed sont généralement spécifiées entre des apostrophes ('').
- `fichier` : spécifie le fichier à traiter. Si aucun fichier n'est spécifié, sed utilise l'entrée standard (stdin).

Lorsque la commande sed est exécutée, elle lit les lignes du fichier spécifié (ou de l'entrée standard) une par une et applique les commandes spécifiées sur chaque ligne. Les modifications sont effectuées en sortie.

## Utilisation des commandes sed
Les commandes sed sont utilisées pour effectuer des opérations spécifiques sur les lignes. Voici quelques exemples de commandes sed couramment utilisées :

- `s/motif/remplacement/` : Remplace le motif spécifié par le texte de remplacement. Par exemple, `s/hello/hi/` remplacera la première occurrence du mot "hello" par "hi" sur chaque ligne.
- `n` : Imprime la ligne courante.
- `d` : Supprime la ligne courante.
- `p` : Imprime la ligne courante (peut être utilisée avec d'autres commandes pour filtrer les lignes).
- `i\texte` : Insère du texte avant la ligne courante.
- `a\texte` : Ajoute du texte après la ligne courante.
- `/motif/` : Affiche uniquement les lignes contenant le motif spécifié.

Il existe de nombreuses autres commandes sed disponibles pour effectuer diverses opérations, telles que le découpage de lignes, la substitution globale, etc.

## Utilisation des options courantes en sed
Voici quelques options couramment utilisées avec la commande sed :

- `-i` : Modifie le fichier d'entrée directement. Les modifications sont enregistrées dans le fichier d'origine.
- `-e` : Permet d'exécuter plusieurs commandes sed dans une seule commande.
- `-n` : Supprime l'impression automatique des lignes et n'affiche que les lignes spécifiées par les commandes.

Ces options peuvent être utilisées pour personnaliser le comportement de sed selon vos besoins.

## Exemples d'utilisation de sed
Voici quelques exemples d'utilisation de la commande sed :

- Remplacer toutes les occurrences d'un mot dans un fichier :
  ```bash
  sed 's/motif/remplacement/g' fichier
  ```

- Supprimer une ligne spécifique d'un fichier :
  ```bash
  sed '5d' fichier # Supprime la ligne 5
  ```

- Ajouter du texte avant une ligne spécifique dans un fichier :
  ```bash
  sed '5 i\texte' fichier   # Ajoute avant la ligne 5
  ```

- Afficher uniquement les lignes contenant un motif spécifique :
  ```bash
  sed -n '/motif/p' fichier
  ```

- Modifier le fichier d'entrée directement :
  ```bash
  sed -i 's/motif/remplacement/g' fichier
  ```

Ces exemples vous donnent un aperçu des fonctionnalités et des options de la commande sed. Explorez davantage pour découvrir toutes les possibilités offertes par sed lors de l'édition et de la transformation de texte.
