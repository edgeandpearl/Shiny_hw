library(shiny)

L <- read.csv("all_words.csv", sep = ",")
# Define the overall UI
shinyUI(
  fluidPage(
    titlePanel("One thousand Most Frequently Used Words HW Edition"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(4,
             selectInput("lang",
                         "Language:",
                         c("All languages",
                           unique(as.character(L$language))))
      ),
      
    # Create a new row for the table.
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)
)
