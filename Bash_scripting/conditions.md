# Les conditions en bash et les opérateurs de test
[Liste des opérateurs en Bash](https://linuxhint.com/bash_operator_examples)

- `-eq` : égal à (pour les nombres)
- `-ne` : différent de (pour les nombres)
- `-gt` : strictement supérieur à (pour les nombres)
- `-lt` : strictement inférieur à (pour les nombres)
- `-ge` : supérieur ou égal à (pour les nombres)
- `-le` : inférieur ou égal à (pour les nombres)
- `-z` : vide (pour les chaînes de caractères)
- `-n` : non vide (pour les chaînes de caractères)
- `-f` : existe et est un fichier régulier
- `-d` : existe et est un répertoire
- `-e` : existe (peut être un fichier, un répertoire, un lien symbolique, etc.)
- `-r` : a les permissions de lecture
- `-w` : a les permissions d'écriture
- `-x` : a les permissions d'exécution

Voici un exemple d'utilisation de ces opérateurs dans une condition :

```bash
if [ $num1 -eq $num2 ]; then
    echo "Les nombres sont égaux."
elif [ $num1 -gt $num2 ]; then
    echo "Le premier nombre est supérieur au deuxième."
else
    echo "Le premier nombre est inférieur au deuxième."
fi
```

Dans cet exemple, les variables `$num1` et `$num2` sont comparées à l'aide des opérateurs `-eq` (égal à) et `-gt` (strictement supérieur à).

Vous pouvez combiner ces opérateurs avec des expressions conditionnelles (`if`, `elif`, `else`) pour effectuer des tests plus complexes et prendre des décisions en fonction des résultats des tests.


Vous pouvez également utiliser l'instruction `!` pour inverser la logique :

```bash
if [ ! $num1 -eq $num2 ]; then
    echo "Les nombres ne sont PAS égaux"
fi
```

Vous pouvez aussi combiner plusieurs conditions : 

```bash
age=25
name="Alice"

if [ $age -gt 18 ] && [ "$name" == "Alice" ]; then
    echo "Les deux conditions sont vraies"
else
    echo "Une des deux conditions n'est pas validée"
fi


if [ $age -gt 18 ] || [ "$name" == "Alice" ]; then
    echo "Au moins l'une des deux conditions est validée"
else
    echo "Aucune des deux conditions n'est validée"
fi
```

```bash
# Vérifier si une commande est installée
# Notez qu'ici, "command -v" est un 'test', donc pas besoin de rajouter les []
if command -v nom_de_la_commande >/dev/null 2>&1; then
    echo "La commande est installée."
else
    echo "La commande n'est pas installée."
fi
```
