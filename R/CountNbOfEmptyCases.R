nbOfZero = function(mat){
  cpt = 0
  for (i in 1:(dim(mat)[1])){
    for (j in 1:(dim(mat)[2])){
      if (mat[i, j] == " "){
        cpt = cpt + 1
      }
    }
  }
  return(cpt)
}
