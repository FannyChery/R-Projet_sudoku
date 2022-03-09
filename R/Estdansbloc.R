#Fonction qui retourne si une valeur ce trouve dans le bloc b ou non
estdansbloc <- function(val, b, matrice){
  if(b == 1){
    comp = 0
    for (i in 1:3){
      for (j in 1:3){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 2){
    comp = 0
    for (i in 1:3){
      for (j in 4:6){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 3){
    comp = 0
    for (i in 1:3){
      for (j in 7:9){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 4){
    comp = 0
    for (i in 4:6){
      for (j in 1:3){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 5){
    comp = 0
    for (i in 4:6){
      for (j in 4:6){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 6){
    comp = 0
    for (i in 4:6){
      for (j in 7:9){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }

  }
  if(b == 7){
    comp = 0
    for (i in 7:9){
      for (j in 1:3){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 8){
    comp = 0
    for (i in 7:9){
      for (j in 4:6){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if(b == 9){
    comp = 0
    for (i in 7:9){
      for (j in 7:9){
        if(matrice[i,j] == val){
          comp = 1
        }
      }
    }
  }
  if (comp == 1){return(TRUE)}
  else{return(FALSE)}
}
