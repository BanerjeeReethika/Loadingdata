#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

suppressPackageStartupMessages(c(
  library(shiny),
  library(tm),
  library(stringr)))



# Source the generated R script
source("C:/Users/baner/Downloads/Milestone_Report1.R")


server <- function(input, output) {
  observeEvent(input$predictButton, {
    phrase <- input$inputText
    next_word <- predict_next_word(phrase)  # Assuming this function is defined in the sourced content
    
    output$predictedWord <- renderText({ next_word })
  })
}