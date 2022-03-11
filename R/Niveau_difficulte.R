#' Affiche le niveau de difficulté
#'
#' @param MAT : matrice de taille 9x9, c'est la grille de sudoku à compléter
#' @return affiche le niveau de difficulté du sudoku

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
  if (p => 10000){
    return ('Expert')
  }
}
