library(gridExtra)
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Grille de Sudoku"),

    # Gère la partie gauche de l'app
    sidebarPanel(
      selectInput("select", label = h3("Faites votre choix"),
                  choices = list("Génerer sudoku complet",
                                 "Génerer sudoku incomplet",
                                 "Résoudre le sudoku")),
    hr(),
    verbatimTextOutput("value")
    ),

        # gère la partie droite de l'app
        mainPanel(
          plotOutput("sudoku")
        )
    )
)
