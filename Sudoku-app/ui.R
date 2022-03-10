#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(gridExtra)
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("grille de sudoku"),

    # gere la partie gauche de l'app
    sidebarPanel(
      selectInput("select", label = h3("Faites votre choix"),
                  choices = list("generer sudoku complet", 
                                 "generer sudoku incomplet",
                                 "resoudre le sudoku")),
    hr(),
    verbatimTextOutput("value")
    ), 

        # gere la partie droite de l'app
        mainPanel(
          plotOutput("sudoku")
        )
    )
)
