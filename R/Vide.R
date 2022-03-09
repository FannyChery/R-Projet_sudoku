#Fonction qui vide un sudoku
vide <- function (matrice_complet){
  #vide le sudoku
  for (i in 1:90){
    matrice_complet[sort(sample.int(9, 1)),sort(sample.int(9, 1))] = " "
  }

}
