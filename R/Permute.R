#' Fonction qui permute aléatoirement les lignes et les colonnes d'un même bloc
#'
#' @param matrice_complet : matrice 9x9 complète
#' @return Affiche la nouvelle matrice avec ses lignes et ses colonnes permutées aléatoirement
#'

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
