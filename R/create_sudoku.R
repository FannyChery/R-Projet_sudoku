#' Algorithme qui créer
#'
#' @param matrice_vide : sudoku à compléter
#' @return le nombre de retour effectué pour résoudre le sudoku


#Fonction qui créer une grille de sudoku
create_Sudoku <- function (){
  library(gridExtra)
  mat<-matrix(0, ncol = 9,nrow=9)

  #remplissage du bloc 1x1(1), 1x2(2), 1x3(3)
  x <- c(1:9)
  mat[1,]=sample(x)
  for (i in 1:3){
    mat[2,i]=mat[1,i+6]
    mat[3,i]=mat[1,i+3]
  }
  for (i in 4:6){
    mat[2,i]=mat[1,i-3]
    mat[3,i]= mat[1,i+3]
  }
  for (i in 7:9){
    mat[2,i]=mat[1,i-3]
    mat[3,i]=mat[1,i-6]
  }

  #remplissage du bloc 2x1(4), 3x1(7)
  for (i in 4:6){
    mat[i,1]=mat[i-3,3]
    mat[i,2]= mat[i-3,1]
    mat[i,3]=mat[i-3,2]
  }
  for (i in 7:9){
    mat[i,1]=mat[i-6,2]
    mat[i,2]=mat[i-6,3]
    mat[i,3]=mat[i-6,1]
  }

  #remplissage bloc 2x2(5), 2x3(6)
  for (i in 4:6){
    mat[4,i]=mat[6,i-3]
    mat[5,i]=mat[4,i-3]
    mat[6,i]=mat[5,i-3]
  }
  for (i in 7:9){
    mat[4,i]=mat[5,i-6]
    mat[5,i]=mat[6,i-6]
    mat[6,i]=mat[4,i-6]
  }

  #remplissage du bloc 3x2(8)
  for (i in 7:9)
    mat[i,4]=mat[i-3,6]
  for (i in 7:9)
    mat[i,5]=mat[i-3,4]
  for (i in 7:9)
    mat[i,6]=mat[i-3,5]

  #remplissage du bloc 3x3(9)
  for (i in 7:9)
    mat[i,7]=mat[i-3,9]

  for (i in 7:9)
    mat[i,8]=mat[i-3,7]

  for (i in 7:9)
    mat[i,9]=mat[i-3,8]
  grille(mat)
  return(mat)
}


#Fonction qui permute aléatoirement des lignes et des colonnes et vide aléatoires des cases
permute_vide <- function (matrice_complet){
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

  #vide le sudoku
  for (i in 1:90){
    matrice_complet[sort(sample.int(9, 1)),sort(sample.int(9, 1))] = " "
  }

  grille(matrice_complet)
  return(matrice_complet)
}
