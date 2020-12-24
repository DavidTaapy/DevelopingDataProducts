# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# http://shiny.rstudio.com/

library(shiny)

# Plotting a scatter plot using the data provided
shinyUI(fluidPage(
    titlePanel("Scatter Plot Creator for Iris Dataset"),
    sidebarLayout(
        sidebarPanel(
            checkboxInput("Setosa", "Plot Setosa", value = FALSE),
            checkboxInput("Versicolor", "Plot Versicolor", value = FALSE),
            checkboxInput("Virginica", "Plot Virginica", value = FALSE)
        ),
        mainPanel(
            plotOutput("Scatter")
        )
    )
))
