library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.

L <- read.csv("all_words.csv", sep = ",", encoding = "utf-8-sig")
# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- L
    if (input$lang != "All languages") {
      data <- data[data$language == input$lang,]
    }
    data
  }))
  
})
