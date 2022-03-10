# Jeu du Sudoku
Ce projet est un package R nommé 'SUDO' avec une interface graphique crée avec shiny. Cette application shiny permet de jouer au Sudoku, de générer des grilles aléatoires et leurs solutions.

## Règle du jeu:
Sudoku est joué sur une grille de 9 x 9 espaces. Dans les lignes et les colonnes sont 9 "carrés" (composé de 3 x 3 espaces). 
Chaque rangée, colonne et carré (9 espaces chacun) doit être rempli avec les numéros de 1 à 9, sans répéter aucun nombre dans la rangée, la colonne ou le carré. 

Il existe 4 niveaux de jeu :
- Facile : moins de 1 000
- Intermédiaire : de 1 000 à 5 000
- Difficile : 5 000 à 10 000
- Expert : plus de 10 0000

## Installation préalables pour l'utilisation du package
$ # Commande pour installer le package 'gridExtra'
$ install.packages("gridExtra")
$ library(gridExtra)

$ # Commande pour installer le package 'shinyWidgets'
$ install.packages("shinyWidgets")
$ library(shinyWidgets)

Ce projet a été créer en collaboration avec Olivier Côme et Fanny Chery
