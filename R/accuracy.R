accuracy = function(emptyCase){
  nb_back = c(rep(0,50))
  for (i in 1:50){
    m = create_Sudoku()
    mat_complete = permute(m)
    mat_incomplete = delete_val(mat_complete, emptyCase)
    nb_back[i] = backtraking(mat_incomplete)[1]
    print(i)
  }
  return(mean(nb_back))
}
