#Création tableau pour mémoire
tableau <- function (matrice_vide){
  matrice_tableau <- matrix(0, nrow = nb_case_vide(matrice_vide), ncol = 3)
  position = 1
  for (i in 1:9){
    for (j in 1:9){
      if(matrice_vide[i,j] == " "){
        matrice_tableau[position,1] = i
        matrice_tableau[position,2] = j
        matrice_tableau[position,3] = nbpossib_case(i, j, matrice_vide)
        position = position + 1
      }
    }
  }
  t =  as.data.frame(matrice_tableau)
  return(t[order(t$V3),])
}
#exemple tableau(MAT)

