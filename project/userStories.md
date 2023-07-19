# Application de dessin Pixel art compétitif "Px_Wars"


## Plateforme de dessin collectif compétitif.

Un user non connecté peut observer la grille en cours.
Un user non connecté peut observer les informations de chaque pixel
Un user non connecté peut observer les récaputilatifs des batailles passées.
Un user non connecté peut s'inscrire
Un user non connecté peut se connecter.

Un user connecté peut accomplir tout ce que peut faire un user non connecté à l'exception de l'inscription et de la connection.
Un user connecté peut se déconnecter
un user connecté peut se désinscrire
Un user connecté peut consulter son profil
un user connecté peut modifier ses informations
Un user connecté peut selectionner une couleur courante*
Un user connecté peut peindre un pixel
un user connecté peut consulter le temps restant avant son prochain coup de pinceau.

Un admin peut modifier la taille de la grille
Un admin peut créer une bataille
Un admin peut peindre la grille entièrement
Un admin peut peindre la grille partiellement
Un admin peut retirer les droits de peintures à un user temporairement
Un admin peut retirer les droits de peintures à un user de façon définitive


## Les entités :
- User
- Cell
- Grid
- Battle
    
## Relations :

- Battle 0..1 => 0..1 Grid
- Grid 0..* => 0..1 Battle
- Grid 0..1 => 0..* Cell
- Cell 0..* => 0..1Grid
- Cell 0..1 => 0..1 User
- User 0..1 => 0..* Cell
