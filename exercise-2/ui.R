shinyUI(fluidPage(
  
  # Add a numbericInput to choose the number of observations
  numericInput("num", label = "# observations", value = 100),
  selectInput('color', label = 'Color', choices = list("Red" = 'red', 'Blue' = 'blue', 'Green' = 'green')),
  
  # Plot the output with the name "histogram"
  plotOutput('scatter')

))