>08-06-23 Kevin Touret - Drosalys

# Modélisation UML

Unified Modeling Language est un langage de modélisation orientée objet.


## Cas d'utilisation
Sert à structurer les différents besoins des utilisateurs et objectifs correspondants d'un système.

Afin de réaliser un diagramme de cas d'utilisation, il est important de se poser plusieurs questions:
* Quels sont les acteurs
* quelles sont les taches réalisées par les acteurs
* le système devra t'il informer l'acteur

Il y-a plusieurs manières de voir un système:
* un cas d'utilisation par acteur
* un cas d'utilisation global

Tout dépend de la complexité de celui-ci


## Diagramme de classe

Le diagramme de classe permet de modéliser les différentes entités du système, c'est a dire les différents objets le composant et les relations entre eux.

Ce diagramme permet de faire ressortir plusieurs concepts de notre système
* Les classes (objets) de l'application, avec leurs attributs et méthodes
* les différentes relations entre elles
* les généralisations

## attributs et leur type

types d'attributs (string, date, int, float, boolean etc)

visibilité:
* "**Public**":(+) Element visible en dehors de la classe
* "**Private**":(-) Element non-visible en dehors de la classe
* "**Protected**":(#) Element visible dans les classes filles (héritage)

Identifiant unique:
Il sagit souvent d'un attribut particulier, qui permet de repérer de façon unique chaque objet, instance de la classe, il sagit souvent:
* d'un entier incrémenté
* d'un numéro de facture
* d'un email

Il s'agit d'un moyen de représenter facilement un objet unique.

## Methodes
Il s'agit des actions réalisables par l'objet, comme "rouler" pour la voiture.
il faut préciser les parenthèses après, qui correspondent au paramètre de la méthode, autrement dit ce que le comportement à besoin pour fonctionner.

Les méthodes sont soumises aux mêmes règles de visibilités que les attributs.


## Relations entre les classes

Notion de relations entre les classes:

Il existe plusieurs liens entre les objets, cela se traduit par des relations qui existent entre leurs classes respectives.
Par exemple, on peut dire qu'une personne à un comte bancaire, chacun étant un objet à part entière, mais ils sont liés entre eux.

### Association
La plus courante, elle permet de relier plusieurs classes entre elles

### Agregation
C'est une variante de l'association.

Type:  
* essence
* diesel
* electrique
* hev
* phev

Véhicule:


Elle se représente avec un losange (vide) du coté de l'agrégat. cela signifie qu'un "Vehicule" à les attributs de son "type".  
On aurait pu le déclarer directement le type dans le véhicule, mais on a préféré le faire autrement (pour 3 nf ou autre).

### composition

C'est un cas particulier de l'agrégation, il se note avec un losange plein.  
Sa suppression implique la suppression des classes liées.

### Généralisation

Se caractérise avec la flèche vide, on l'utilise pour identifier des sous groupes d'objets ayant des spécificités communes.

**Instrument** est la classe mère des classes **Cordes**, **Percussion** et **Vent**