#' Fonction qui retourne l'indice d'une valeur donnée dans un vecteur donné
#'
#' @param valeur : la valeur à tester
#' @param vecteur_possib : vecteur contenant que des chiffres
#' @return l'indice de la valeur dans le vecteur, si la valeur
#' n'appartient pas au vecteur alors la fonction retourne indice = 0

#Fonction qui retourne l'indice de l'ancienne valeur dans le vecteur des possibilité
indice_vect <- function (valeur, vecteur_possib){
  indice <- 0
  if (length(vecteur_possib) > 0){
    for (k in 1:(length(vecteur_possib))){
      if (vecteur_possib[k] == valeur){
        indice <- k
      }
    }
  }
  return (indice)
}
