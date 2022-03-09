#Fonction qui renvoie si le sudoku est complet ou non
est_complet <- function (matrice){
  alors = 0
  for (i in 1:9){
    for (j in 1:9){
      if( matrice[i,j] == " "){
        alors = 1
      }
    }
  }
  if( alors == 1){return(FALSE)}
  else(return(TRUE))
}
