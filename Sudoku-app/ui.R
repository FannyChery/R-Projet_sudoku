library(gridExtra)
library(shiny)

devtools::load_all()

shinyUI(fluidPage(

  # Application title
  titlePanel("Grille de Sudoku"),

  # Gère la partie gauche de l'app
  sidebarPanel(
    hr(),
    selectInput("level", label = h4("Niveau de difficulté"),
                choices = list("", "Facile", "Intermediaire", "Difficile",
                               "Expert"),
                selected = ""),
    hr(),
    actionButton("jouer" , "Jouer"),
    hr(),
    actionButton("sol","Solution"),
    hr(),
    verbatimTextOutput("value"),
    hr(),

  ),

  # gère la partie droite de l'app
  mainPanel(
    plotOutput("sudoku"),
    titlePanel("Descendez la page, pour voir la solution."),
    br(),
    br(),
    br(),
    br(),
    plotOutput("solver")

  )
)
)
