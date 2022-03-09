#' Fonction qui retourne une matrice avec des cases vidés aléatoirement
#'
#' @param matrice_complet : matrice 9x9 complète
#' @return la matrice 9x9 avec des cases vides


#Fonction qui vide un sudoku
vide <- function (matrice_complet){
  #vide le sudoku
  for (i in 1:90){
    matrice_complet[sort(sample.int(9, 1)),sort(sample.int(9, 1))] = " "
  }
  return(matrice_complet)
}
