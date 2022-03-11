library(gridExtra)
library(shiny)
devtools::load_all()
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Grille de Sudoku"),
  
  # Gere la partie gauche de l'app
  sidebarPanel(
    fluidRow(
      actionButton("button", "jouer")
    ),
    
    fluidRow(
      actionButton("button", "solution")
    ),
    
    selectInput("level", label = h4("Niveau de difficulte"),
                choices = list("", "Facile", "Intermediaire", "difficile",
                               "Expert"),
                selected = ""),
    hr(),
  ),
  
  # gere la partie droite de l'app
  mainPanel(
    plotOutput("sudoku"),
    #plotOutput("solver")
    
  )
)
)
