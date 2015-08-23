library(shiny)
library(ggplot2)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("ggplot2 demo"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    selectInput("geom", "Select ggplot2 geometry:", choices = c("point", "line", "boxplot"), selected = "point" ),
    selectInput("x", "Select x:", choices = colnames(mpg), selected = "cyl"),
    selectInput("y", "Select y:", choices = colnames(mpg), selected = "hwy"),
    selectInput("colour", "Select Color:", choices = colnames(mpg), selected = "manufacturer" ),
    selectInput("facet_wrap", "Select Facet Wrap:", choices = colnames(mpg), selected = "trans" )
  ),
  
  # Show the generated plot
  mainPanel(
    plotOutput("ggplot_Plot"),
    h3(textOutput("ggplot_x")),
    p("Help? Please go through the documentation link:",a("help_documention.html",href="help_documention.html"))
  )
))