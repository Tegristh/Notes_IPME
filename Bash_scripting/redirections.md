# Redirection de flux

En utilisant les redirections de sortie, vous pouvez contrôler où les données générées par une commande sont dirigées. Voici les principales façons de rediriger l'output :

1. Redirection vers un fichier :

   - `>` : Cette redirection permet de rediriger la sortie standard (stdout) vers un fichier spécifié. Si le fichier existe déjà, il sera écrasé. Exemple :
     
     ```bash
     $ ls > listing.txt
     ```
     Cette commande exécute la commande `ls` et écrit le résultat dans le fichier "listing.txt". Si le fichier existe déjà, il sera écrasé.

   - `>>` : Cette redirection permet de rediriger la sortie standard (stdout) vers un fichier spécifié, en ajoutant les données à la fin du fichier plutôt que de l'écraser. Exemple :
     
     ```bash
     $ echo "Nouvelle ligne" >> listing.txt
     ```
     Cette commande ajoute la chaîne de caractères "Nouvelle ligne" à la fin du fichier "listing.txt".

   - `2>` : Cette redirection permet de rediriger la sortie d'erreur standard (stderr) vers un fichier spécifié. Exemple :
     
     ```bash
     $ command_inexistante 2> erreur.txt
     ```
     Cette commande exécute une commande inexistante, ce qui génère un message d'erreur. L'erreur est redirigée vers le fichier "erreur.txt".

   - `&>` ou `2>&1` : Cette redirection permet de rediriger à la fois la sortie standard et l'erreur standard vers un fichier spécifié. Exemple :
     
     ```bash
     $ command_inexistante &> sortie_erreur.txt
     ```
     Cette commande exécute une commande inexistante, redirigeant à la fois la sortie standard et l'erreur standard vers le fichier "sortie_erreur.txt".

2. Redirection vers /dev/null :

   - `/dev/null` est un périphérique spécial qui est souvent utilisé pour supprimer les données. Il agit comme un "trou noir" où vous pouvez rediriger les données que vous souhaitez ignorer.

   - Pour rediriger la sortie vers `/dev/null` et la supprimer complètement, utilisez la syntaxe suivante :
     
     ```bash
     $ commande > /dev/null
     ```
     Par exemple, si vous exécutez une commande qui génère beaucoup de sortie, mais que vous ne voulez pas voir cette sortie dans le terminal, vous pouvez la rediriger vers `/dev/null`.

   - Pour rediriger à la fois la sortie standard et l'erreur standard vers `/dev/null`, utilisez la syntaxe suivante :
     
     ```bash
     $ commande > /dev/null 2>&1
     ```
     Cela enverra à la fois la sortie standard et l'erreur standard vers `/dev/null`, les supprimant complètement.

Ces exemples de redirection d'output vous aideront à contrôler où vont les données générées par vos commandes et à gérer les sorties en conséquence.
