library(gridExtra)
library(shiny)
devtools::load_all()

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Sudoku game by Fanny Chery and Olivier COME"),

    # gere la partie gauche de l'app
    sidebarPanel(
      selectInput("select", label = h4("Faites votre choix"),
                  choices = list("initialisation", "Jouer",
                                 "Donner la solution sans backtracking",
                                 "resoudre le sudoku avec backtracking"),
                  selected = ""),
    hr(),
    #verbatimTextOutput("value"),
    
    selectInput("level", label = h4("Niveau de difficulte"),
                choices = list("", "facile", "moyen", "difficile"),
                selected = ""),
    hr(),
    #verbatimTextOutput("value")
    ), 

        # gere la partie droite de l'app
        mainPanel(
          plotOutput("sudoku")
        )
    )
)
