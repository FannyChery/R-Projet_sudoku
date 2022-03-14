#' Fonction qui retourne la moyenne des backtrackings d'un échantillon de 20 matrices incomplètes non identiques mais ayant le même nombre de cases vides.
#'
#' @param matrice : un entier designant le nombre de cases vides de la matrice
#' @return un nombre qui désigne la moyenne des backtrackings

accuracy = function(emptyCase){
  nb_back = c(rep(0,50))
  for (i in 1:50){
    m = create_Sudoku()
    mat_complete = permute(m)
    mat_incomplete = delete_val(mat_complete, emptyCase)
    nb_back[i] = backtraking(mat_incomplete)[1]
    print(i)
  }
  return(mean(nb_back))
}
