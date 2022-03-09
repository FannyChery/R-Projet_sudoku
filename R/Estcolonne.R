#Fonction qui donne TRUE si une valeur est dans une colonne
estcolonne <- function (val, j, matrice){
  compteur = 0
  for (k in 1:9){
    if(matrice[k,j] == val){
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
