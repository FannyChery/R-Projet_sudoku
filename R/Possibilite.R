#'
#'
#' @param matrice_vide : sudoku à compléter
#' @return le nombre de retour effectué pour résoudre le sudoku


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
