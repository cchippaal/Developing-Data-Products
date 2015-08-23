# shiny app Library
library(shiny)
# ggplot2 for graphs
library(ggplot2)

# Setup server input, output logic for plot to generate randon distribution
shinyServer(function(input, output) {
  
# Below script will generate distribution plot. The below script is a call to renderplot which indicate
# reactive and automatically re-run when the input values are changed
# And the output will generate in plot
  
  output$ggplot_Plot <- renderPlot({
    ggplot_x = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom)
    eval(parse(text=ggplot_x))
    g
  })
  
  output$ggplot_x <- renderText({
    ggplot_x = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom) 
  })
  
})
