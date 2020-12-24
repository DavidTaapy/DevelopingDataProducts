# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# http://shiny.rstudio.com/

library(shiny)

shinyServer(function(input, output) {
    output$Scatter <- renderPlot({
        data <- iris
        ifelse(input$Setosa, function(x){}, data <- data[which(data$Species != "setosa"), ])
        ifelse(input$Versicolor, function(x){}, data <- data[which(data$Species != "versicolor"), ])
        ifelse(input$Virginica, function(x){}, data <- data[which(data$Species != "virginica"), ])
        if (nrow(data) == 0) {
            plot(0, type = "n", xlab = "Sepal Length", ylab = "Petal Length", xlim = c(0, 10), ylim =  c(0, 10))
        } else {
            plot(data$Sepal.Length, data$Petal.Length, col = data$Species, xlab = "Sepal Length", ylab = "Petal Length")
        }
    })
})
