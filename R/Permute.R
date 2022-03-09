#Fonction qui permute aléatoirement des lignes et des colonnes
permute <- function (matrice_complet){
  #permutation ligne
  for (i in c(0,3,6)){
    for (k in 1:3){
      V = c(matrice_complet[k,])
      matrice_complet[k,] = matrice_complet [k+i,]
      matrice_complet[k+i,] = V
    }
  }

  #permutation colonne
  for (i in c(0,3,6)){
    for (k in 1:3){
      M = c(matrice_complet[,k])
      matrice_complet[,k] = matrice_complet [,k+i]
      matrice_complet[,k+i] = M
    }
  }
  grid.table(matrice_complet)
  return(matrice_complet)
}
