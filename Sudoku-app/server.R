library(gridExtra)
library(shiny)
devtools::load_all()

shinyServer(function(input, output) {
  observeEvent(input$button1,{
    level <<- input$select
    sudoku <<- generateLevelMat(level)
    output$sudoku = renderPlot({
      t = paste("Sudoku de niveau ", level)
      title(t)
      grid.table(sudoku)
    })
  })
  
  observeEvent(input$button2,{
    mat_incomplete = sudoku
    res = backtraking(mat_incomplete)[2]
    sudoku = matrix(unlist(res), ncol = 9, nrow = 9)
    output$sudoku = renderPlot({
      t = paste("Sudoku de niveau ", level, " resolu")
      title(t)
      grid.table(sudoku)
    })
  })
  
  #output$value <- renderPrint({ input$select })
})
