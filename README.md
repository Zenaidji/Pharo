## Introduction aux listes chainées
Les listes chainées sont une structure de données de base en informatique
Elles sont utilisées pour stocker une collection d'éléments de manière séquentielle.
Chaque élément de la liste est représenté par un neud (class Cell), qui contient une valeur et un lien vers le noeud suivant.


## Opérations sur les listes chainées
Voici les opérations implémentées:
- Ajouter un élément au début de la liste `addFirst`
- Supprimer un élément spécifique de la liste `removeAt`
- Rechercher un élément dans la liste `get`
- Obtenir la taille de la liste `size
- vérifier si la list est Vide `isEmpty`
## Contenu du dépôt
Ce dépôt contient une implémentation de la structure de données des listes chainées en Pharo dans le package MyLinkedList.
- le fichier `MyList` contient la Class `MyList` avec les opération sur les list.
- le fichier `Cell` contient la Class `Cell` une cellule de la liste ou un noeud.
- le fichier `CellTest` contient les tests de la class Cell .
- le fichier `MyListTest` contient les tests de la class MyList .
- le pakage doc compte à lui contient la class Doc qui gènere la documentation d'une class.

pour genere la documentation d'une class il faut donner le nom de la class et le repèrtoir  ou vous voulez génerer la doc en paramètre à la methode genrateClassDoc de la class doc.
`genrateClassDoc: class path: mypath`



