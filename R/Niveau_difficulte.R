#' Affiche le niveau de difficulté
#'
#' @param matrice : matrice de taille 9x9
#' @return affiche une matrice avec la fonction 'grid.table' du package gridExtra

#Fonction qui affiche une grille de sudoku
niveau <- function (MAT){
  p = backtraking(MAT)
  if (p < 1000){
    return ('Facile')
  }
  if ((p => 1000)&(p < 5000)){
    return ('Intermédiaire')
  }
  if ((p => 5000)&(p < 10000)){
    return ('Difficile')
  }
  if (p > 10000){
    return ('Expert')
  }
}
