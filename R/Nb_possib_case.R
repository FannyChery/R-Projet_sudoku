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
