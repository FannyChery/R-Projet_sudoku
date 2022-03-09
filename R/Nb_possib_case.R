#'Fonction qui retourne le nombre de valeurs possibles à mettre dans une case
#'
#' @param i : ligne de la case choisie
#' @param j : colonne de la case choisie
#' @param matrice_vide : sudoku à compléter
#' @return le nombre de retour effectué pour résoudre le sudoku


#Fonction qui compte le nb de possibilité par case
nbpossib_case <- function (i, j, matrice_vide){
  nb = 0
  if(matrice_vide[i,j] != " "){
    return(nb)
  }
  else{
    for (k in 1:9){
      if((estligne(k, i, matrice_vide) == FALSE) &
         (estcolonne(k, j, matrice_vide) == FALSE) &
         (estdansbloc(k, bloc(i,j), matrice_vide)) == FALSE){
        nb = nb + 1
      }
    }
  }
  return(nb)
}
