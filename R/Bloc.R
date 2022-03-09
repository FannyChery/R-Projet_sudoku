#' Fonction qui retourne le numéro du bloc d'une case donnée d'une matrice 9x9
#' la matrice du sudoku est de la forme:
#'  1 2 3
#'  4 5 6
#'  7 8 9
#'
#' @param i : la ligne de la case dans la matrice
#' @param j : la colonne de la case dans la matrice
#' @return le numéro du bloc d'une case
#'


#Fonction est dans un bloc qui renvoie le numéro du bloc
# matrice du sudoku de la forme:
#  1 2 3
#  4 5 6
#  7 8 9


bloc <- function(i,j){
  if(i<4){
    if(j<4){
      return (1)
    }
    if((3<j)&(j<7)){
      return (2)
    }
    if (6<j){
      return (3)
    }
  }
  if((3<i)&(i<7)){
    if(j<4){
      return (4)
    }
    if((3<j)&(j<7)){
      return (5)
    }
    if (6<j){
      return (6)
    }
  }
  if(6<i){
    if(j<4){
      return (7)
    }
    if((3<j)&(j<7)){
      return (8)
    }
    if (6<j){
      return (9)
    }
  }
}
