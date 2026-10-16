## Etape 1 - La carte
---

*Travail: Créez la première table et insérez les sept plats du contexte. Vérification : afficher les plats du plus cher au moins cher*

### schema relationnel:
PLATS( **id_plat**,nom_plat,categorie,prix)

*Piège: Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?*

*Reponse:*
_ type choisi pour le prix int
_ l'identifiant choisi est id_plat

## Etape 2 - Les categories
---

*Travail: La table des plats contient déjà des données. Ajoutez la catégorie sans perdre ces données, puis rendez-la obligatoire. Vérification : nombre de plats par catégorie, y compris les catégories sans plat*

### schema relationnel:
PLATS( **id_plat**,nom_plat,#id_categorie,prix)
CATEGORIES(**id_categorie**,nom_categorie)

*Piège: Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats ? Donnez un exemple de problème concret*

*Reponse:*
_car si l on met categorie VARCHAR(50) dans plats on doit a chaque fois lors insertion de plat saisir une categorie a la main ce qui peut entrainer des fautes pendant la saisi
_par exemple si la categorie dessert devient patisserie il faut modifier chaque plat ayant la categorie dessert en patisserie,ce qui peut entrainer une perte de temps et des erreurs de saisi

## Etape 3 - Les commandes
--- 

*Travail. Une commande contient plusieurs plats, et un plat apparaît dans plusieurs commandes. Vérification : montant total de chaque commande.*

### schema relationnel:
PLATS( **id_plat**,nom_plat,#id_categorie,prix)
CATEGORIES(**id_categorie**,nom_categorie)
COMMANDE(**id_commande**,date)
PLAT_COMMANDE(**id_platcommande**,#id_commande,#id_plat,quantite)

*Piège: Où placez-vous la quantité ?*

*Reponse:*
_dans la table plat_commande