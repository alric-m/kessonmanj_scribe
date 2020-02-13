# Kessonmanj

## Description
Live on https://guarded-lake-13524.herokuapp.com

* Ruby version : 2.4.1

* Rails version : 5.2.4.1

## Considérations sur le modèle de données
Le modèle de données est constitué de deux modèles `Recipe` et `Ingredient` reliés par une table de jointure.
Mon idée initiale était de séparer, lors de l'import des recettes, le dosage des ingrédients, et de placer placer le dosage dans la table de jointure, ceci pour deux raisons :

* Éviter les doublons dans la table des ingrédients

* Pouvoir adapter n'importe quelle recette à n'importe quel nombre d'invités

Le manque de temps pour gérer le nombre de cas particulier (ex: `1 boîte de Lait Concentré Sucré Nestlé 397 g`) et le nombre d'ingrédients (27867) m'en ont dissuadé, mais c'est la direction qu'aurait du prendre, selon moi, ce projet dans la "vrai vie".

## TODO

* Voir section précédente

* Recherche par plusieurs ingrédients

* Page `recipes#show`

* I18n

* Meilleure UI/UX
