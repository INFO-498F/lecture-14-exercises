library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  fluidPage(
    # Application title
    titlePanel("Hello Shiny!"), 
    
    # Create a mainPanel of the app
    mainPanel(
      # Plot the output with the name "histogram"
      plotOutput('histogram')
    )
  )
)