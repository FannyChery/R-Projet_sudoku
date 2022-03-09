#Fonction qui compte le nb de valeur possible par case
count_pos <- function (matrice){
  count <- matrix(" ", nrow = 9, ncol = 9)
  for (i in 1:9){
    for (j in 1:9){
      if(matrice[i,j] == " " ){
        compteur = 0
        for (k in 1:9){
          if((estligne(k,i,matrice)==FALSE) &
             (estcolonne(k,j,matrice)==FALSE) &
             (estdansbloc(k,bloc(i,j), matrice))==FALSE){
            compteur = compteur + 1
          }
        }
        count[i,j] = compteur
      }
    }
  }
  grid.table(count)
  return (count)
}
