#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(rmarkdown)
# Define UI for application that draws a histogram
ui <- fluidPage(
  titlePanel("Shiny App with R Markdown Source"),
  sidebarLayout(
    sidebarPanel(
      textInput("inputText", "Enter a phrase:", value = ""),
      actionButton("predictButton", "Predict Next Word")
    ),
    mainPanel(
      h3("Predicted Next Word:"),
      textOutput("predictedWord")
    )
  )
)