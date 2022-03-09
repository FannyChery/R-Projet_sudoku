#' Fonction qui retourne le vecteur avec les valeurs possibles de la case voulue
#'
#' @param i : ligne de la case
#' @param j : colonne de la case
#' @param matrice_vide : matrice 9x9, c'est la grille de sudoku à complété
#' @return le vecteur avec les valeurs possibles d'une case ordonnée par ordre croissant


#Fonction qui retourne un vecteur avec les possibilités d'une case
possibilite <- function (i, j, matrice_vide){
  posib <- vector()
  for (k in 1:9){
    if((matrice_vide[i,j] == " ")&
       (estligne(k,i,matrice_vide)==FALSE) &
       (estcolonne(k,j,matrice_vide)==FALSE) &
       (estdansbloc(k,bloc(i,j), matrice_vide))==FALSE){
      posib = append(posib,k)
    }
  }
  return(posib)
}
#exemple : possibilite(1,1,MAT)
