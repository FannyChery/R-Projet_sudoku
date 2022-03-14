library(gridExtra)
library(shiny)
devtools::load_all()

# Define UI for application of sudoku game
shinyUI(fluidPage(

    # Application title
    titlePanel("Sudoku game by Fanny Chery and Olivier COME"),

    # gere la partie gauche de l'application
    sidebarPanel(
      selectInput("select", label = h3("Choisissez le niveau de difficulte"),
                  choices = list("", "Facile",
                                 "Intermediaire", "Difficile",
                                 "Expert"),
                  selected = ""),
    hr(),
    #verbatimTextOutput("value"),
    
    fluidRow(
      actionButton("button1", "jouer")
    ),
    
    hr(),
    
    fluidRow(
      actionButton("button2", "solution")
    ),
    hr(),
    #verbatimTextOutput("value")
    ), 

        # gere la partie droite de l'application
        mainPanel(
          plotOutput("sudoku"),
          #plotOutput("sol")
        )
    )
)
