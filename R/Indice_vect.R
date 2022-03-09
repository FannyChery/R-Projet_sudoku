#Fonction qui retourne l'indice de l'ancienne valeur dans le vecteur des possibilité
indice_vect <- function (ancienne_val, vecteur_possib){
  indice = 0
  if (length(vecteur_possib) > 0){
    for (k in 1:(length(vecteur_possib))){
      if (vecteur_possib[k] == ancienne_val){
        indice = k
      }
    }
  }
  return (indice)
}
