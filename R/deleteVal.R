#' Fonction qui supprime un nombre donné de valeurs dans la matrice à des positions aléatoires
#'
#' @param matrice : matrice 9x9
#' @return une matrice avec n valeurs supprimées à des positions aléatoires

delete_val = function(mat, n){
  z = nbOfZero(mat)
  while (z < n){
    i = sample(1:9, 1)
    j = sample(1:9, 1)
    if (mat[i, j] != " "){
      mat[i, j] = " "
      z = nbOfZero(mat)
    }
  }
  return(mat)
}
