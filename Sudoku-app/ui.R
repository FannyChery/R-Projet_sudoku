library(gridExtra)
library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Grille de Sudoku"),

    # Gère la partie gauche de l'app
    sidebarPanel(
      hr(),
      actionButton("jouer" , "Jouer"),
      hr(),
      actionButton("sol","Solution"),
      hr(),
      verbatimTextOutput("value")
    ),

        # gère la partie droite de l'app
        mainPanel(
          plotOutput("sudoku"),
          plotOutput("solver")

        )
    )
)
