
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()

shinyUI(fluidPage(
  
    h3("Community Happy Hour Map!"),
    leafletOutput("mymap"),
    p(),
    actionButton("recalc", "New points")
  )
)
