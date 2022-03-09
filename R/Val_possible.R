#Fonction qui dit si une valeur est possible dans une case
val_possible <- function (val, i, j, matrice_vide){
  compteur = 0
  if ((estligne(val, i, matrice_vide) == TRUE)||
      (estcolonne(val, j, matrice_vide) == TRUE)||
      (estdansbloc(val, bloc(i, j), matrice_vide)) == TRUE){
    compteur = 1
  }
  if(compteur == 0){return(TRUE)}
  else{return(FALSE)}
}
