#'Fonction qui retourne le nombre de cases vides dans une matrice donnée, ie une grille de sudoku
#'
#' @param matrice_vide : matrice 9x9, c'est le sudoku à compléter
#' @return le nombre de cases vides dans la matrice

#Fonction compte le nb de cases vides dans une grille
nb_case_vide <- function (matrice_vide){
  nb <- 0
  for(i in 1:9){
    for (j in 1:9){
      if (matrice_vide[i,j]==" "){
        nb <- nb + 1
      }
    }
  }
  return (nb)
}
