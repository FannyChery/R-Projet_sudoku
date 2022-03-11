#' Fonction qui ne prend aucun paramètre en entrée, et qui affiche une grille de
#' sudoku à compléter, c'est à dire une matrice, avec la fonction 'grid.table'
#'
#'

#Fonction qui retourne une grille de sudoku à compléter
SUDOKU <- function (mat){
  MAT <- vide(mat)
  grid.table(MAT)
  return(MAT)
}
