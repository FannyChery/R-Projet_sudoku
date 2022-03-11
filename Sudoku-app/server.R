library(gridExtra)
library(shiny)

devtools::load_all()

shinyServer(function(input, output) {

  output$sudoku <- renderPlot({
    if (input$button == "jouer"){
      m = create_Sudoku()
      mat_complete <<- permute(m)
      mat_incomplete <<- SUDOKU(mat_complete)
      sudoku = mat_incomplete
    } else {
        sudoku = mat_complete
    }
    grid.table(sudoku)
  })

})
