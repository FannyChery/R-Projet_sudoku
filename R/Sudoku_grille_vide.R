
#Fonction qui retourne une grille de sudoku à compléter
SUDOKU <- function (){
  mat = create_Sudoku()
  Mat = permute(mat)
  MAT = vide(Mat)
  grid.table(MAT)
}
