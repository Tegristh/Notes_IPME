# Gestion des permissions et utilisateurs

## adduser
Ajoute un nouvel utilisateur sur la machine.

```sh
sudo adduser charlotte  # Créer l'utilisatrice "charlotte" et le groupe "charlotte"
# On sera invité à lui choisir un mdp et d'autres informations
# Le repertoire /home/charlotte sera créé automatiquement avec les bonnes permissions
# Une Shell lui sera attribuée par default
```

## useradd
Ajoute un utilisateur mais ne donne pas la possibilité de changer ses données et mdp.
Ne génère pas non plus de "home" pour ce user par défault !

```sh
sudo useradd sylvain        # Créer juste le user
sudo useradd sylvain -m     # Génère aussi le dossier "/home/sylvain"
```

## passwd
Change le mot de passe d'un utilisateur.

```sh
sudo passwd françois    # Change le mdp de l'utilisateur "françois"
sudo passwd root         # Change le mdp de root (qui n'a pas de mdp par défault)
```

## userdel
Supprime un utilisateur (mais pas son dossier home).

```sh
sudo userdel françois   # François n'existe plus, mais ses fichiers existent toujours
```

## visudo
Permet d'éditer le fichiers des "sudoers" : les utilisateurs ayant le droit d'utiliser
"sudo" (les administrateurs donc).
```sh
sudo visudo
```
On peut alors ajouter des users et groupes et leur donner les droits sudoers.

```sh
françois ALL = /sbin/useradd       # Autorise françois à utiliser l'executable useradd
charlotte ALL = ALL                 # Donne tous les droits à charlottes
```
## usermod
"User modification" permet de changer les informations d'un utilisateur.
Consultez "man usermod" pour voir toutes les options possibles.

```sh
sudo usermod charlotte --shell /usr/bin/zsh     # Change la shell de Charlotte à ZSH.
sudo usermod -l michel françois                 # Renomme "françois" en "michel"
```

## su
"Switch user"
Permet de se logger en tant qu'un autre utilisateur
```sh
su charlotte            # Se log en tant que charlotte
su                      # Se log en tant que root
su - charlotte          # Se log en tant que charlotte et charge son environnement (MIEUX)
su -                    # Se log en tant que root et charge son environnement (MIEUX)
```

On peut simplement faire "exit" pour revenir à son profil de base.

## finger
Doit être installé.
Permet d'avoir des informations concernant un utilisateur.

## Voir tous les users
```sh
cat /etc/passwd
```
Pour chaque user, nous obtenons une ligne suivant ce model
username:password:uid:gid:personaldata:homeDIR:shell
uid = user id
gid = group id

Exemple:
charlotte:x:1000:1000:,,,:/home/charlotte:/bin/bash
Le "x" pour password indique que celui ci est rangé dans un autre fichier (/etc/shadow).
Bien sûr ce dernier est hashé.


## groups
Voir les groupes auquels appartient le user.

## groupadd
Ajoute un nouveau groupe.

```sh
sudo groupadd powerrangers
```
## Voir tous les groupes sur la machine
```sh
cat /etc/group
```

## Ajouter un user à un groupe
Il faut passer par la commande usermod.

```sh
sudo usermod -G powerangers françois     # DANGER !! François ne fera plus parti QUE du groupe powerangers
sudo usermod -aG powerangers françois     # On AJOUTE le groupe poweranger à François
```

## chmod
Change les droits d'accès à un fichier/dossier.
read = r = 4
write = w = 2
execute = x = 1

user = u
group = g
others = o

```sh
chmod 744 fichier           # Donne toutes les permission au possesseur, mais les autres ne peuvent que lire
chmod 777 fichier           # Donne toutes les permissions à tout le monde sur ce fichier
chmod +x fichier            # Ajoute à tout le monde la permission d'execution sur ce fichier
chmod u+x go-rw fichier     # Ajoute "execute" au user, retire read/write au groupe et aux autres
```

## chown
Change le propriétaire du fichier/dossier.
```sh
chown françois fichier   # Maintenant le fichier appartient à françois
chown -R françois dossier   # Maintenant le dossier et son contenu appartiennent à françois
```

## chgrp
Change le groupe d'un fichier
```sh
chgrp powerrangers fichier   # Maintenant le fichier appartient au groupe powerrangers
chgrp -R powerrangers dossier   # Maintenant le fichier appartient au groupe powerrangers
```

## chsh
"Change shell" permet de changer la shell de l'utilisateur.
Par défault il s'agit de /bin/bash, mais il existe d'autres shells tels que zsh et fish,
plus modernes, mais qui ne sont pas forcément installées sur la machine.
```sh
sudo chsh       # On sera alors invité à renseigner la nouvelle shell
```
Pour connaître votre shell actuelle, vous pouvez faire:
```sh
echo $SHELL
```

Le changement de shell ne prendra effet qu'en relançant la machine.

