#Fonction qui donne TRUE si une valeur est dans une ligne
estligne <- function (val, i, matrice){
  compteur = 0
  for (k in 1:9){
    if(matrice[i,k] == val){
      compteur = 1
    }
  }
  if (compteur == 0){
    return (FALSE)
  }
  else{
    return (TRUE)
  }

}
