#' Fonction qui retourne une matrice de sudoku incomplète associée à un niveau de difficulté renseigné par l'utilisateur
#'
#' @param matrice : une chaine de caractère désignant le niveau de difficulté ("Facile", "Intermediaire", "Difficile", "Expert")
#' @return une matrice de sudoku incomplète (i.e avec des cases vides) associée à un niveau de difficulté

generateLevelMat = function(level){
  n = 0
  mat = create_Sudoku()
  mat_complete = permute(mat)
  if (level == "Facile"){
    while (n < 1) {
      easyMat = delete_val(mat_complete, 45)
      nbOfback = backtraking(easyMat)[1]
      if (nbOfback < 1000){
        matLevel = easyMat
        n = n + 1
      }
    }
  }else if (level == "Intermediaire"){
    while (n < 1) {
      middleMat = delete_val(mat_complete, 50)
      nbOfback = backtraking(middleMat)[1]
      if ((nbOfback >= 1000) & (nbOfback < 5000)){
        matLevel = middleMat
        n = n + 1
      }
    }
  }else if (level == "Difficile"){
    while (n < 1) {
      difficultMat = delete_val(mat_complete, 53)
      nbOfback = backtraking(difficultMat)[1]
      if ((nbOfback >= 5000) & (nbOfback < 10000)){
        matLevel = difficultMat
        n = n + 1
      }
    }
  }else if (level == "Expert"){
    while (n < 1) {
      expertMat = delete_val(mat_complete, 55)
      nbOfback = backtraking(expertMat)[1]
      if (nbOfback >= 10000){
        matLevel = expertMat
        n = n + 1
      }
    }
  }
  return(matLevel)
}
