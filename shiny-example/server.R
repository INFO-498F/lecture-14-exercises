library(shiny)

shinyServer(function(input, output) {
  # Create a histogram property of the output
  output$histogram <- renderPlot({
    # Use shiny's renderPlot function to render a plot
    x <- rnorm(100)
    return(hist(x))
  })
})
