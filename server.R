
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

data <- read.csv("restaurantData.csv")

shinyServer(function(input, output) {

  
  output$mymap <- renderLeaflet({
    leaflet(data = data) %>%
      addTiles() %>%
      addMarkers(lat = ~longitude, lng = ~latitude, popup = ~as.character(Establishment))
  })

})
