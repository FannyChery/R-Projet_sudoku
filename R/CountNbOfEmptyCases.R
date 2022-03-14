#' Fonction qui retourne le nombre de cases vides présentent dans la matrice
#'
#' @param matrice : matrice 9x9 avec des cases vides
#' @return le nombre de cases vides qu'il y a dans la matrice

nbOfZero = function(mat){
  cpt = 0
  for (i in 1:(dim(mat)[1])){
    for (j in 1:(dim(mat)[2])){
      if (mat[i, j] == " "){
        cpt = cpt + 1
      }
    }
  }
  return(cpt)
}
