library(gridExtra)
library(shiny)

grille <- function (MAT){
  grid.table(MAT)
}

create_Sudoku <- function (){
  mat<-matrix(0, ncol = 9,nrow=9)
  
  #remplissage du bloc 1x1(1), 1x2(2), 1x3(3)
  x <- c(1:9)
  mat[1,] <- sample(x)
  for (i in 1:3){
    mat[2,i] <- mat[1,i+6]
    mat[3,i] <- mat[1,i+3]
  }
  for (i in 4:6){
    mat[2,i] <- mat[1,i-3]
    mat[3,i] <- mat[1,i+3]
  }
  for (i in 7:9){
    mat[2,i] <- mat[1,i-3]
    mat[3,i] <- mat[1,i-6]
  }
  
  #remplissage du bloc 2x1(4), 3x1(7)
  for (i in 4:6){
    mat[i,1] <- mat[i-3,3]
    mat[i,2] <- mat[i-3,1]
    mat[i,3] <- mat[i-3,2]
  }
  for (i in 7:9){
    mat[i,1] <- mat[i-6,2]
    mat[i,2] <- mat[i-6,3]
    mat[i,3] <- mat[i-6,1]
  }
  
  #remplissage bloc 2x2(5), 2x3(6)
  for (i in 4:6){
    mat[4,i] <- mat[6,i-3]
    mat[5,i] <- mat[4,i-3]
    mat[6,i] <- mat[5,i-3]
  }
  for (i in 7:9){
    mat[4,i] <- mat[5,i-6]
    mat[5,i] <- mat[6,i-6]
    mat[6,i] <- mat[4,i-6]
  }
  
  #remplissage du bloc 3x2(8)
  for (i in 7:9)
    mat[i,4] <- mat[i-3,6]
  for (i in 7:9)
    mat[i,5] <- mat[i-3,4]
  for (i in 7:9)
    mat[i,6] <- mat[i-3,5]
  
  #remplissage du bloc 3x3(9)
  for (i in 7:9)
    mat[i,7] <- mat[i-3,9]
  
  for (i in 7:9)
    mat[i,8] <- mat[i-3,7]
  
  for (i in 7:9)
    mat[i,9] <- mat[i-3,8]
  grille(mat)
  return(mat)
}

permute <- function (matrice_complet){
  #permutation ligne
  for (i in c(0,3,6)){
    for (k in 1:3){
      V <- c(matrice_complet[k,])
      matrice_complet[k,] <- matrice_complet [k+i,]
      matrice_complet[k+i,] <- V
    }
  }
  
  #permutation colonne
  for (i in c(0,3,6)){
    for (k in 1:3){
      M <- c(matrice_complet[,k])
      matrice_complet[,k] <- matrice_complet [,k+i]
      matrice_complet[,k+i] <- M
    }
  }
  grid.table(matrice_complet)
  return(matrice_complet)
}

vide <- function (matrice_complet){
  #vide le sudoku
  for (i in 1:90){
    matrice_complet[sort(sample.int(9, 1)),sort(sample.int(9, 1))] = " "
  }
  return(matrice_complet)
}

#Fonction compte le nb de cases vides dans une grille
nb_case_vide <- function (matrice_vide){
  nb <- 0
  for(i in 1:9){
    for (j in 1:9){
      if (matrice_vide[i,j]==" "){
        nb <- nb + 1
      }
    }
  }
  return (nb)
}

tableau <- function (matrice_vide){
  matrice_tableau <- matrix(0, nrow = nb_case_vide(matrice_vide), ncol = 3)
  position  <-1
  for (i in 1:9){
    for (j in 1:9){
      if(matrice_vide[i,j] == " "){
        matrice_tableau[position,1] <- i
        matrice_tableau[position,2] <- j
        matrice_tableau[position,3] <- nbpossib_case(i, j, matrice_vide)
        position = position + 1
      }
    }
  }
  t <-  as.data.frame(matrice_tableau)
  return(t[order(t$V3),])
}

est_complet <- function (matrice){
  alors <-  0
  for (i in 1:9){
    for (j in 1:9){
      if( matrice[i,j] == " "){
        alors  <- 1
      }
    }
  }
  if( alors == 1){return(FALSE)}
  else(return(TRUE))
}

possibilite <- function (i, j, matrice_vide){
  posib <- vector()
  for (k in 1:9){
    if((matrice_vide[i,j] == " ")&
       (estligne(k,i,matrice_vide)==FALSE) &
       (estcolonne(k,j,matrice_vide)==FALSE) &
       (estdansbloc(k,bloc(i,j), matrice_vide))==FALSE){
      posib = append(posib,k)
    }
  }
  return(posib)
}

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

nbpossib_case <- function (i, j, matrice_vide){
  nb <- 0
  if(matrice_vide[i,j] != " "){
    return(nb)
  }
  else{
    for (k in 1:9){
      if((estligne(k, i, matrice_vide) == FALSE) &
         (estcolonne(k, j, matrice_vide) == FALSE) &
         (estdansbloc(k, bloc(i,j), matrice_vide)) == FALSE){
        nb <- nb + 1
      }
    }
  }
  return(nb)
}

val_possible <- function (val, i, j, matrice_vide){
  compteur <- 0
  if ((estligne(val, i, matrice_vide) == TRUE)||
      (estcolonne(val, j, matrice_vide) == TRUE)||
      (estdansbloc(val, bloc(i, j), matrice_vide)) == TRUE){
    compteur <- 1
  }
  if(compteur == 0){return(TRUE)}
  else{return(FALSE)}
}

estligne <- function (val, i, matrice){
  compteur = 0
  for (k in 1:9){
    if(matrice[i,k] == val){
      compteur <- 1
    }
  }
  if (compteur == 0){
    return (FALSE)
  }
  else{
    return (TRUE)
  }
  
}

estcolonne <- function (val, j, matrice){
  compteur <- 0
  for (k in 1:9){
    if(matrice[k,j] == val){
      compteur <- 1
    }
  }
  if (compteur == 0){
    return (FALSE)
  }
  else{
    return (TRUE)
  }
}

estdansbloc <- function(val, b, matrice){
  if(b == 1){
    comp <- 0
    for (i in 1:3){
      for (j in 1:3){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 2){
    comp <- 0
    for (i in 1:3){
      for (j in 4:6){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 3){
    comp <- 0
    for (i in 1:3){
      for (j in 7:9){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 4){
    comp <- 0
    for (i in 4:6){
      for (j in 1:3){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 5){
    comp <- 0
    for (i in 4:6){
      for (j in 4:6){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 6){
    comp <- 0
    for (i in 4:6){
      for (j in 7:9){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
    
  }
  if(b == 7){
    comp <- 0
    for (i in 7:9){
      for (j in 1:3){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 8){
    comp <- 0
    for (i in 7:9){
      for (j in 4:6){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if(b == 9){
    comp <- 0
    for (i in 7:9){
      for (j in 7:9){
        if(matrice[i,j] == val){
          comp <- 1
        }
      }
    }
  }
  if (comp == 1){return(TRUE)}
  else{return(FALSE)}
}


bloc <- function(i,j){
  if(i<4){
    if(j<4){
      return (1)
    }
    if((3<j)&(j<7)){
      return (2)
    }
    if (6<j){
      return (3)
    }
  }
  if((3<i)&(i<7)){
    if(j<4){
      return (4)
    }
    if((3<j)&(j<7)){
      return (5)
    }
    if (6<j){
      return (6)
    }
  }
  if(6<i){
    if(j<4){
      return (7)
    }
    if((3<j)&(j<7)){
      return (8)
    }
    if (6<j){
      return (9)
    }
  }
}

backtraking <- function (matrice_vide){
  comp <- 0
  pos <- 1
  case <- nb_case_vide(matrice_vide)
  print(c('nb case vide = ', case))
  tab <- tableau(matrice_vide)
  while (est_complet(matrice_vide) != TRUE){
    val <- matrice_vide[tab[pos,1], tab[pos,2]]
    matrice_vide[tab[pos,1],tab[pos,2]] = " "
    vecteur_possibilite <- possibilite(tab[pos,1], tab[pos,2], matrice_vide)
    ind <- indice_vect(val, vecteur_possibilite)
    
    if ((nbpossib_case(tab[pos,1],tab[pos,2], matrice_vide) == 0)
        ||(ind == length(vecteur_possibilite))){
      matrice_vide[tab[pos,1], tab[pos,2]] = " "
      pos <- pos - 1
      comp <- comp + 1
    }
    
    else{
      for (k in (ind+1):length(vecteur_possibilite)){
        repeat{
          if(val_possible(vecteur_possibilite[k], tab[pos, 1], tab[pos, 2], matrice_vide) == TRUE){
            matrice_vide[tab[pos, 1],tab[pos, 2]] <- vecteur_possibilite[k]
            break
          }
        }
        break
      }
      pos <- pos + 1
    }
  }
  print(c("compteur =", comp))
  return(matrice_vide)
}

SUDOKU <- function (mat){
  MAT <- vide(mat)
  return(MAT)
}

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$sudoku <- renderPlot({
    if (input$select == "Jouer"){
      m = create_Sudoku()
      mat_complete <<- permute(m)
      mat_incomplete <<- SUDOKU(mat_complete)
      sudoku = mat_incomplete
    } else if (input$select == "resoudre le sudoku avec backtracking"){
        sudoku = backtraking(mat_incomplete)
    } else if (input$select == "Donner la solution sans backtracking") {
      sudoku = mat_complete
    } else {
      sudoku = matrix(0, 9, 9)
    }
    grid.table(sudoku)
  })
  
  #output$value <- renderPrint({ input$select })
})
