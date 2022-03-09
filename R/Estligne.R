#' Fonction qui retourne TRUE si une valeur donnée est dans une ligne donnée, FALSE sinon
#'
#' @param val : la valeur à tester
#' @param i : la ligne où l'on veut regarder si il y a la valeur
#' @param matrice_vide : matrice 9x9 avec des cases vides, c'est la grille de sudoku à compléter
#' @return TRUE or FALSE

#Fonction qui donne TRUE si une valeur est dans une ligne
estligne <- function (val, i, matrice){
  compteur = 0
  for (k in 1:9){
    if(matrice[i,k] == val){
      compteur = 1
    }
  }
  if (compteur == 0){
    return (FALSE)
  }
  else{
    return (TRUE)
  }

}
