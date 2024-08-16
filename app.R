library(shiny)
library(rmarkdown)

# Render the R Markdown file to an R script (or other format)
render("C:/Users/baner/OneDrive/Documents/Milestone_Report1.Rmd", output_format = "all", output_file = "output_script.R")

# Source the generated R script
source("output_script.R")

# Define UI for application
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

# Define server logic
server <- function(input, output) {
  observeEvent(input$predictButton, {
    phrase <- input$inputText
    next_word <- predict_next_word(phrase)  # Assuming this function is defined in the sourced content
    
    output$predictedWord <- renderText({ next_word })
  })
}

# Run the application
shinyApp(ui = ui, server = server)

