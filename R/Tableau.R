#' Fonction qui retourne un data-frame de taille (n x p) :
#' avec n = le nombre de cases vides dans la matrice d'entrée et p = 3
#' Dans chaque ligne du data-frame, on retrouve les coordonnées (ligne et colonne) d'une case,
#' puis dans la 3ème colonne, on a le nombre de possibilité de cette case.
#' Les lignes de ce data-frame sont ordonnées par le nombre de possibilité de la case, de plus
#' petit au plus grand. C'est à dire, ce data-frame est ordonné par ordre croissant sur les
#' valeurs de sa 3ème colonne
#'
#' @param matrice_vide : matrice 9x9 avec des cases vides, c'est la grille de sudoku à compléter
#' @return un data frame de taille (n x p) :
#' avec n = le nombre de cases vides dans la matrice d'entrée et p = 3
#'

#Création tableau pour mémoire
tableau <- function (matrice_vide){
  matrice_tableau <- matrix(0, nrow = nb_case_vide(matrice_vide), ncol = 3)
  position = 1
  for (i in 1:9){
    for (j in 1:9){
      if(matrice_vide[i,j] == " "){
        matrice_tableau[position,1] = i
        matrice_tableau[position,2] = j
        matrice_tableau[position,3] = nbpossib_case(i, j, matrice_vide)
        position = position + 1
      }
    }
  }
  t =  as.data.frame(matrice_tableau)
  return(t[order(t$V3),])
}
#exemple tableau(MAT)

