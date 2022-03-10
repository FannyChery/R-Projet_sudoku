library(gridExtra)
library(shiny)

shinyServer(function(input, output) {
    observeEvent(input$jouer,{
      a <-create_Sudoku()
      b <- permute(a)
      output$sudoku <- renderPlot({
         #mettre ta matrice générée aléatoirement
        SUDOKU(b)
      })
      observeEvent(input$sol,{

        output$solver <- renderPlot({
          #mettre ta matrice générée aléatoirement
          grid.table(b)
        })
      })


    })
})
