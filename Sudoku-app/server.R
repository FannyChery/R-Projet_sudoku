library(gridExtra)
library(shiny)

shinyServer(function(input, output) {

    output$sudoku <- renderPlot({
      if (input$select == "Génerer sudoku incomplet"){
        sudoku = cbind(c(9,0,8,0,0,0,2,0,0),c(0,0,0,0,0,0,0,0,0),
                       c(0,5,0,0,0,0,0,0,1), c(1,0,0,0,7,0,3,2,9),
                       c(0,9,4,8,0,2,0,0,6), c(0,0,0,0,0,6,0,0,4),
                       c(0,2,0,0,0,0,0,9,5), c(0,0,0,0,0,0,0,0,7),
                       c(5,1,7,0,0,9,6,0,0))
      } else {
        sudoku = matrix(0,9,9)
      }
      grid.table(sudoku)
    })

    output$value <- renderPrint({ input$select })
})
