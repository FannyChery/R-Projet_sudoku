#' Affiche le niveau de difficulté du sudoku
#'
#' @param p : le nombre de retour calculé pour par la fonction 'backtraking' pour résoudre la grille
#' @return affiche le niveau de difficulté du sudoku

#Fonction qui affiche une grille de sudoku
niveau <- function (p){
  if (p < 1000){
    return ('Facile')
  }
  if ((p >= 1000)&(p < 5000)){
    return ('Intermédiaire')
  }
  if ((p >= 5000)&(p < 10000)){
    return ('Difficile')
  }
  if (p >= 10000){
    return ('Expert')
  }
}
