#' Affiche un grille de sudoku
#'
#' @param matrice : matrice de taille 9x9
#' @return affiche une matrice avec la fonction 'grid.table' du package gridExtra

#Fonction qui affiche une grille de sudoku
grille <- function (MAT){
  library(gridExtra)
  grid.table(MAT)
}
