#' Fonction qui créer une grille de sudoku
#'
#' @return affiche une grille de sudoku complète


#Fonction qui créer une grille de sudoku
create_Sudoku <- function (){
  library(gridExtra)
  mat<-matrix(0, ncol = 9,nrow=9)

  #remplissage du bloc 1x1(1), 1x2(2), 1x3(3)
  x <- c(1:9)
  mat[1,] <- sample(x)
  for (i in 1:3){
    mat[2,i] <- mat[1,i+6]
    mat[3,i] <- mat[1,i+3]
  }
  for (i in 4:6){
    mat[2,i] <- mat[1,i-3]
    mat[3,i] <- mat[1,i+3]
  }
  for (i in 7:9){
    mat[2,i] <- mat[1,i-3]
    mat[3,i] <- mat[1,i-6]
  }

  #remplissage du bloc 2x1(4), 3x1(7)
  for (i in 4:6){
    mat[i,1] <- mat[i-3,3]
    mat[i,2] <- mat[i-3,1]
    mat[i,3] <- mat[i-3,2]
  }
  for (i in 7:9){
    mat[i,1] <- mat[i-6,2]
    mat[i,2] <- mat[i-6,3]
    mat[i,3] <- mat[i-6,1]
  }

  #remplissage bloc 2x2(5), 2x3(6)
  for (i in 4:6){
    mat[4,i] <- mat[6,i-3]
    mat[5,i] <- mat[4,i-3]
    mat[6,i] <- mat[5,i-3]
  }
  for (i in 7:9){
    mat[4,i] <- mat[5,i-6]
    mat[5,i] <- mat[6,i-6]
    mat[6,i] <- mat[4,i-6]
  }

  #remplissage du bloc 3x2(8)
  for (i in 7:9)
    mat[i,4] <- mat[i-3,6]
  for (i in 7:9)
    mat[i,5] <- mat[i-3,4]
  for (i in 7:9)
    mat[i,6] <- mat[i-3,5]

  #remplissage du bloc 3x3(9)
  for (i in 7:9)
    mat[i,7] <- mat[i-3,9]

  for (i in 7:9)
    mat[i,8] <- mat[i-3,7]

  for (i in 7:9)
    mat[i,9] <- mat[i-3,8]
  grille(mat)
  return(mat)
}

