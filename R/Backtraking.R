#' Algorithme de Backtraking
#'
#' @param matrice_vide : matrice 9x9 avec des cases vides, c'est la grille de sudoku à compléter
#' @return compteur = le nombre de retour effectué pour résoudre le sudoku


#Algorithme de Backtraking
backtraking <- function (matrice_vide){
  comp = 0
  pos = 1
  case = nb_case_vide(matrice_vide)
  print(c('nb case vide = ', case))
  tab = tableau(matrice_vide)
  while (est_complet(matrice_vide) != TRUE){
    val = matrice_vide[tab[pos,1], tab[pos,2]]
    matrice_vide[tab[pos,1],tab[pos,2]] = " "
    vecteur_possibilite = possibilite(tab[pos,1], tab[pos,2], matrice_vide)
    ind = indice_vect(val, vecteur_possibilite)

    if ((nbpossib_case(tab[pos,1],tab[pos,2], matrice_vide) == 0)
        ||(ind == length(vecteur_possibilite))){
      matrice_vide[tab[pos,1], tab[pos,2]] = " "
      pos = pos - 1
      comp = comp + 1
    }

    else{
      for (k in (ind+1):length(vecteur_possibilite)){
        repeat{
          if(val_possible(vecteur_possibilite[k], tab[pos, 1], tab[pos, 2], matrice_vide) == TRUE){
            matrice_vide[tab[pos, 1],tab[pos, 2]] = vecteur_possibilite[k]
            break
          }
        }
        break
      }
      pos = pos + 1
    }
  }
  grille(matrice_vide)
  return(c("compteur =", comp))
}


#mat = create_Sudoku()
#MAT = permute_vide(mat)
#backtraking(MAT)
