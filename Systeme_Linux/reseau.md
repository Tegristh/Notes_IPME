# Reseau
Ressources
[Tuto SSH par DistroTube](https://www.youtube.com/watch?v=2QXkrLVsRmk)
[Tuto SSH par TraversyMedia](https://www.youtube.com/watch?v=hQWRp-FdTpc)

## openssh-client / openssh-server et setup
Le client et le serveur permettant de réaliser des connections SSH.
La machine qui essaye de se connecter en remote est le "client" et doit donc avoir openssh-client installé.
La machine a laquelle on veut se connecter doit avoir openssh-server installé ET doit exposer
un port.

```sh
sudo apt install openssh-server    # Debian
sudo pacman install openssh         # Arch (openssh contient le client et le serveur)

sudo systemctl status ssh           # Check le status du serveur SSH
# sshd (pour ssh daemon) fonctionne également

# S'il n'est pas actif, faire les commandes suivantes
sudo systemctl enable ssh
sudo systemctl restart ssh
# ou
sudo systemctl enable --now ssh     # Cumule des deux commandes ci-dessus.

# Ensuite il faut ouvrir le Port auquel on souhaite se connecter.
sudo systemctl status ufw       # Vérifie si notre firewall est actif
sudo ufw allow ssh              # Autorise les connections SSH sur le port par defaut (22)

# On peut à présent se connecter à la machine hôte en SSH via le port 22
ssh username@ip
```

## ssh
Permet de se connecter à une machine distante via le protocole ssh
"host" peut être un domaine (localhost, google.com) ou une adresse IP.
Le port par défaut est 22, mais celui ci n'est pas forcément celui attendu par l'hôte pour
des raisons de sécurité !

```sh
ssh user@host       # Se connecte en tant que "user" sur la machine host via le port 22
ssh root@129.138.23.42 -p 12345 # Se connecte en tant que "root" sur le port 12345

# Pour se connecter sur une Virtual Machine
ssh user@localhost -p 2222      # Le port doit être défini dans la configuration réseau de votre VM (Configuration/Réseau)
# Mode d'accès NAT
# Redirection réseaux : créer une rêgle pour bind le port 22 à 2222 par exemple
```

## ssh-keygen
Permet de générer des paires de clés publique/privée.
Elles seront enregistrées dans ~/.ssh sous linux ou "Utilisateur/.ssh" sous windows.

```sh
ssh-keygen -t keyname
```

Ne dévoilez JAMAIS votre clé privée (.pk). N'exposez que la clé publique ".pub".

Afin de vous connecter à une machine distante sans avoir besoin de mot de passe, vous pouvez enregistrer votre clé publique (client) dans ~/.ssh/authorized_keys de la machine hôte (serveur).

Pour plus de sécurité, vous pouvez désactiver les connections par mot de passe sur le serveur afin de n'autoriser que les connections par clé.

```sh
sudo nano /etc/ssh/sshd_config
# Editez la ligne concernant "PasswordAuthentication" et passez là en "no"
# Dé-commentez là ci besoin (retirez le #)
```

## scp
Permet d'échanger des fichiers (cp/copy) mais via ssh.

```sh
scp [...<fichier(s)_à_copier>] <destination>
scp fichier.txt user@host:/chemin/vers/repertoire       # Copie "fichier.txt" dans /chemin/vers/repertoire de l'hôte.
scp fichier1.txt fichier2.txt fichier3.txt user@host:/chemin/vers/repertoire

scp user@host:/chemin/vers/fichier.txt .      # Copie fichier.txt vers le système local.
scp -P 2222 user@host:/chemin/vers/fichier.txt .      # Pour préciser le port, -P MAJUSCULE !! (me semble t'il)
```

## ifconfig
Doit être installé avec "net-tools". 
Sert à configurer une interface réseau.

```sh
sudo apt install net-tools      # Installation
```

## ip address
Affiche l'addresse IP de la machine.

```sh
ip a        # Raccourci
```

## ping
Permet de tester la connection à un hote.

```sh
ping google.com             # Ping en continue google.com
ping google.com -c 3        # Réalise 3 Pings
```

## netstat
Retourne les infos réseaux.
-tulpn pour filtrer

## ss
Comme netstat, plus moderne.

## iptables
Permet de controler les ports de la machine. Complexe à utiliser.

## ufw
Pour "uncomplicated firewall".
Permet de contrôler le pare-feu et les ports de la machine plus simplement.

```sh
sudo ufw enable     # Active le pare-feux
sudo ufw status     # Voir les ports ouverts
sudo ufw allow 80    # Ouvre le port 80 (HTTP)
sudo ufw allow 22    # Ouvre le port 22 (SSH)
```

## ssh-copy-id
Commande à lancer depuis la machine client (si vous êtes sous linux).
Enregistre la clé ssh du client dans les "authorized keys" du serveur.

```sh
ssh-copy-id user@host
```

