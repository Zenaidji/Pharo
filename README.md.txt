## Introduction aux listes chainées
Les listes chainées sont une structure de données de base en informatique
Elles sont utilisées pour stocker une collection d'éléments de manière séquentielle.
Chaque élément de la liste est représenté par un neud (classe Cell), qui contient une valeur et un lien vers le noeud suivant.
## Opérations sur les listes chainées
Voici les opérations implémentées:
- Ajouter un élément au début de la liste `addFirst`
- Supprimer un élément spécifique de la liste `removeAt`
- Rechercher un élément dans la liste `get`
- Obtenir la taille de la liste `size`
- vérifier si la list est Vide `isEmpty`
## Contenu du dépôt
Ce dépôt contient une implémentation de la structure de données des listes chainées en Pharo dans le package MyLinkedList.
- le fichier `MyList` contient la classe `MyList` avec les opérations sur les listes.
- le fichier `Cell` contient la classe `Cell` une cellule de la liste ou un noeud.
- le fichier `CellTest` contient les tests de la classe Cell .
- le fichier `MyListTest` contient les tests de la classe MyList .
- le package Doc  contient la classe Doc qui gènere la documentation d'une classe.

pour génère la documentation d'une classe il faut lui donner le nom de la classe et le répertoir  ou vous voulez générer la doc en paramètre à la methode genrateClassDoc de la classe Doc.
`genrateClassDoc: class path: mypath`



