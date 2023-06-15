# Architecture

L'architecture du système de fichiers dans Linux suit une structure hiérarchique standardisée, où chaque dossier a un rôle spécifique. Voici une explication générale des dossiers les plus courants :

1. `/` (root) : C'est le point de départ de la hiérarchie du système de fichiers. Tous les autres dossiers en découlent.

2. `/bin` (binary) : Ce dossier contient les fichiers binaires essentiels du système. Ce sont des exécutables utilisés par les utilisateurs et les scripts système de base.

3. `/sbin` (system binary) : Ce dossier contient des exécutables système essentiels. Ces binaires sont généralement utilisés par l'administrateur système pour effectuer des tâches d'administration.

4. `/usr` (Unix System Resources) : Ce dossier contient la majorité des applications, bibliothèques, fichiers de données et documentation du système. Il est généralement monté en lecture seule et est accessible à tous les utilisateurs du système.

   - `/usr/bin` : Il contient des binaires d'applications pour les utilisateurs du système.
   - `/usr/sbin` : Il contient des binaires d'applications système pour les administrateurs.
   - `/usr/lib` : Il contient des bibliothèques partagées utilisées par les programmes du système.
   - `/usr/include` : Il contient les fichiers d'en-tête nécessaires pour le développement de logiciels.
   - `/usr/share` : Il contient des données partagées utilisées par différentes applications.
   - `/usr/local` : Il contient des logiciels et des fichiers spécifiques à une installation locale, généralement après compilation depuis les sources.

5. `/etc` (et cetera / "etsy") : Ce dossier contient les fichiers de configuration système. Les fichiers ici contrôlent le comportement des applications, des services et du système dans son ensemble.

6. `/var` (variable) : Ce dossier contient des données variables, souvent modifiées lors de l'exécution du système. Cela inclut des fichiers de log, des spools d'impression, des bases de données, des fichiers temporaires, etc.

7. `/home` : Ce dossier contient les répertoires personnels des utilisateurs du système.

8. `/root` : C'est le répertoire personnel de l'utilisateur root (l'administrateur système).

9. `/tmp` (temporary) : Ce dossier est utilisé pour stocker des fichiers temporaires créés par les programmes ou les utilisateurs. Les fichiers ici ne persistent pas entre les redémarrages du système.

10. `/boot` : Ce dossier contient les fichiers nécessaires au démarrage du système, tels que les noyaux (kernel) et les fichiers de configuration de démarrage.

Il convient de noter que cette explication fournit une vue d'ensemble de la structure de base de l'architecture Linux. Les distributions Linux peuvent varier légèrement dans la façon dont elles organisent leurs dossiers et peuvent inclure des dossiers supplémentaires spécifiques à la distribution.

Chaque dossier dans l'architecture Linux a un objectif spécifique pour aider à organiser les fichiers du système, les binaires, les bibliothèques, les configurations et les données.

11. Le dossier `/lib` (library) contient les bibliothèques partagées nécessaires au fonctionnement du système et des applications installées. Les bibliothèques sont des fichiers contenant du code réutilisable qui est utilisé par différents programmes pour fournir des fonctionnalités spécifiques.

Voici quelques sous-dossiers courants que vous pouvez trouver dans `/lib` :

- `/lib/modules` : Ce dossier contient les modules du noyau, qui sont des extensions du noyau permettant de prendre en charge différents matériels, systèmes de fichiers ou fonctionnalités spécifiques.

- `/lib/firmware` : Ce dossier contient des micrologiciels (firmware) nécessaires au fonctionnement de certains périphériques matériels, tels que des cartes réseau sans fil.

- `/lib/security` : Ce dossier contient des bibliothèques et des modules de sécurité utilisés pour l'authentification et le chiffrement.

- `/lib/udev` : Ce dossier contient des règles et des scripts utilisés par le système udev pour la gestion dynamique des périphériques.

- `/lib/systemd` : Ce dossier contient des fichiers et des bibliothèques nécessaires à systemd, le gestionnaire de système d'initialisation utilisé par de nombreuses distributions Linux.

En général, le contenu spécifique de `/lib` peut varier en fonction de la distribution Linux que vous utilisez et des paquets logiciels installés sur votre système.

12. Le dossier `/etc` (et cetera) contient les fichiers de configuration du système. C'est l'endroit où se trouvent les paramètres de configuration spécifiques du système, des services et des applications installées. Voici quelques exemples de fichiers et de sous-dossiers couramment trouvés dans `/etc` :

- `/etc/passwd` : Ce fichier contient les informations sur les comptes d'utilisateurs du système, tels que les noms d'utilisateurs, les UID (User ID), les GID (Group ID) et les répertoires personnels.

- `/etc/group` : Ce fichier contient les informations sur les groupes d'utilisateurs du système, tels que les noms de groupe et les GID correspondants.

- `/etc/hosts` : Ce fichier permet de mapper les noms d'hôtes sur des adresses IP. Il est utilisé pour la résolution de noms locaux.

- `/etc/resolv.conf` : Ce fichier contient les paramètres de configuration des serveurs DNS utilisés par le système pour résoudre les noms de domaine en adresses IP.

- `/etc/fstab` : Ce fichier spécifie les systèmes de fichiers montés automatiquement au démarrage du système.

- `/etc/ssh` : Ce dossier contient les fichiers de configuration du service SSH (Secure Shell), utilisé pour les connexions sécurisées à distance.

- `/etc/network` : Ce dossier contient les fichiers de configuration réseau, tels que `interfaces` pour la configuration des interfaces réseau.

- `/etc/apache2` (ou `/etc/httpd`) : Ce dossier contient les fichiers de configuration du serveur web Apache.

- `/etc/mysql` : Ce dossier contient les fichiers de configuration du serveur de base de données MySQL.

- `/etc/sudoers` : Ce fichier définit les règles et les autorisations des utilisateurs et des groupes pour l'utilisation de la commande `sudo`.

Ces exemples illustrent la diversité des fichiers de configuration stockés dans le dossier `/etc`. Chaque application ou service peut avoir ses propres fichiers de configuration spécifiques. Le contenu exact de `/etc` peut varier d'une distribution Linux à une autre et dépend des logiciels installés sur le système.
