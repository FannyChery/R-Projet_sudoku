delete_val = function(mat, n){
  z = nbOfZero(mat)
  while (z < n){
    i = sample(1:9, 1)
    j = sample(1:9, 1)
    if (mat[i, j] != " "){
      mat[i, j] = " "
      z = nbOfZero(mat)
    }
  }
  return(mat)
}
