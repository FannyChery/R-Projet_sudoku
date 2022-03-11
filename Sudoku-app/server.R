library(gridExtra)
library(shiny)

devtools::load_all()

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
