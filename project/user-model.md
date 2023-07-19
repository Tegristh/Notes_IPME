# User Model

## Chiffrement des données:
> Nous utiliserons le module **Django Cryptography** pour chiffrer les données personnelles (sensibles ou non sensibles) des utilisateurs.
[documentation](https://django-cryptography.readthedocs.io/en/latest/index.html)

### installation: 
```sh
pip install django-cryptography
```
### Usage:
```py
from django.db import models
from django_cryptography.fields import encrypt

class MyModel(models.Model):
    pseudo = models.Charfield(max_length=50) # Non encrypté
    sensitive_data = encrypt(models.Charfield(max_length=50))
```

## Django base user model:


> class models.User
[documentation](https://docs.djangoproject.com/fr/4.2/ref/contrib/auth/)

Champs:
- username: obligatoire (150 char)
- password : obligatoire

- first_name: Facultatif (blank = True)
- last_name: facultatif
- email: facultatif

- groups: relation many to many vers Group
- user_permissions: relation many to many vers Permission

- is_staff: Booleen
- is_active: Booleen (mettre a false au lieu de supprimer le compte*) 
- is_superuser : Booleen

- last_login: horodatage automatique
- date_joined: horodatage automatique

Attributs:
- is_authenticated: recommandé
- is_anonymous:

Méthodes:
- get_username(): renvoie le username
- get_full_name(): renvoie first_name et last_name
- get_short_name(): renvoie first_name
- set_password(raw_password): définit le passwordà la chaine brute indiauée, en se chargeant du hachage du mot de passe.
- check_password(raw_password): renvoie True si le password correspond
- set_unusable_password(): marque l'utilisateur comme n'ayant pas de password défini
- has_usable_password(): renvoie False si set_unusable_password a été appellé pour cet user
- get_user_permissions(obj=none): renvoie les permissions de l'user...

etc...
