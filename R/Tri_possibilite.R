#' Fonction qui prend en entrée une matrice avec, dans les cases vides du sudoku à compléter,
#' le nombre de possibilités par case. Et qui retourne une matrice qui ordonne par ordre
#' croissant ces cases.
#'
#' @param count_matrice : matrice 9x9 avec dans les cases qui sont à compléter
#' @return Affiche la matrice avec les ordres des cases triés.
#'


#Fonction qui ordonne les cases vides en fonction des nb de possibilité
tri_possibilite <- function (count_matrice){
  countmat <- matrix(" ", nrow = 9, ncol = 9)
  compteur <- 1
  for (k in 1:9){
    for (i in 1:9){
      for (j in 1:9){
        if(count_matrice[i,j] == k){
          countmat[i,j] <- compteur
          compteur <- compteur +1
        }
      }
    }
  }
  grid.table(countmat)
  return(countmat)
}

#exemple : tri_possibilite(count_pos(MAT))
