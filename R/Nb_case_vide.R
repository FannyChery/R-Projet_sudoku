#Fonction compte le nb de cases vides dans une grille
nb_case_vide <- function (matrice_vide){
  nb = 0
  for(i in 1:9){
    for (j in 1:9){
      if (matrice_vide[i,j]==" "){
        nb = nb + 1
      }
    }
  }
  return (nb)
}
