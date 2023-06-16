# Introduction à awk
Awk est un puissant outil de traitement de texte en ligne de commande. Il permet de manipuler et de filtrer des données tabulaires, en effectuant des opérations sur des champs individuels ou des lignes entières. L'awk est un langage de programmation complet qui offre de nombreuses fonctionnalités pour le traitement des données.

## Structure de base d'une commande awk
La structure de base d'une commande awk est la suivante :

```bash
awk 'pattern { action }' fichier
```

- `pattern` : représente un motif (condition) utilisé pour filtrer les lignes d'entrée.
- `action` : représente les actions à effectuer sur les lignes correspondantes au motif.
- `fichier` : spécifie le fichier d'entrée à traiter. Si aucun fichier n'est spécifié, awk utilise l'entrée standard (stdin).

Lorsque la commande awk est exécutée, elle lit les lignes du fichier d'entrée une par une et applique le motif et l'action correspondants à chaque ligne. Les motifs et les actions peuvent être combinés pour effectuer des opérations complexes sur les données.

## Utilisation des motifs (patterns) en awk
Les motifs sont utilisés pour filtrer les lignes d'entrée. Voici quelques exemples de motifs couramment utilisés :

- `/motif/` : Correspond aux lignes contenant le motif spécifié. Par exemple, `/hello/` correspondra à toutes les lignes contenant le mot "hello".
- `$n == valeur` : Correspond aux lignes où le champ n a la valeur spécifiée. Par exemple, `$3 == 10` correspondra aux lignes où le troisième champ est égal à 10.
- `condition1 && condition2` : Correspond aux lignes qui satisfont à la fois la condition1 et la condition2. Par exemple, `$2 > 5 && $3 < 10` correspondra aux lignes où le deuxième champ est supérieur à 5 et le troisième champ est inférieur à 10.

Il est également possible d'utiliser des opérateurs de comparaison tels que `==`, `!=`, `<`, `>`, `<=` et `>=` dans les motifs pour effectuer des comparaisons numériques ou alphabétiques.

## Utilisation des actions en awk
Les actions définissent les opérations à effectuer sur les lignes correspondant au motif. Voici quelques exemples d'actions couramment utilisées :

- `{ print }` : Affiche la ligne complète.
- `{ print $n }` : Affiche le champ n de la ligne.
- `{ printf "format", arguments }` : Affiche une sortie formatée en utilisant la fonction printf.
- `{ variable = valeur }` : Affecte une valeur à une variable.
- `{ condition }` : Exécute une condition pour effectuer une action.

Les actions peuvent être combinées pour effectuer des opérations plus complexes, telles que le calcul de statistiques, la manipulation de chaînes de caractères, etc.

## Variables intégrées en awk
Awk dispose de plusieurs variables intégrées qui peuvent être utilisées pour effectuer des opérations sur les données :

- `$0` : Représente la ligne complète.
- `$n` : Représente le champ n de la ligne.
- `NR` : Numéro de
