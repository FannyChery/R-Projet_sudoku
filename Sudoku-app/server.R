#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(gridExtra)
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$sudoku <- renderPlot({
      if (input$select == "generer sudoku complet"){
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
