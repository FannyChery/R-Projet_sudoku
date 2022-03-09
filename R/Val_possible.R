#' Fonction qui retourne TRUE, si une valeur est possible dans une case, et FALSE sinon
#'
#' @param val : valeur à tester
#' @param i : ligne de la case
#' @param j : colonne de la case
#' @param matrice_vide : matrice 9x9 avec des cases vides, c'est la grille de sudoku à compléter
#' @return TRUE si la on peut mettre la valeur dans la case donnée, FALSE sinon

#Fonction qui dit si une valeur est possible dans une case
val_possible <- function (val, i, j, matrice_vide){
  compteur <- 0
  if ((estligne(val, i, matrice_vide) == TRUE)||
      (estcolonne(val, j, matrice_vide) == TRUE)||
      (estdansbloc(val, bloc(i, j), matrice_vide)) == TRUE){
    compteur <- 1
  }
  if(compteur == 0){return(TRUE)}
  else{return(FALSE)}
}
