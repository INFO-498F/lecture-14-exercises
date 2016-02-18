### Build map function ###
build_map <- function(data) {
  # Create a bubble map of the data
  g <- list(
    scope = 'usa', 
    projection = list(type = 'albers usa'),
    showland = FALSE,
    landcolor = toRGB("gray85"), 
    subunitwidth = 1,
    countrywidth = 0,
    subunitcolor = toRGB("gray85"), 
    countrycolor = toRGB('gray85')
  )
  
  # Create graph
  plot_ly(data, 
          lon = lng, 
          lat = lat, 
          text = paste('<b>Name:</b>', data[,"Victim Name"], '<br><b>Shots Fired:</b>', data$shots_fired),
          hoverinfo = 'text',
          marker = list(size = 1 + shots_fired/3, opacity = .4, color = 'red'),
          type = 'scattergeo', 
          locationmode = 'USA-states'
  ) %>%
    layout(title = 'Crowdsourced Police Shootings', geo = g)
}