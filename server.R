#Jacob Burke
#March 1, 2015
#INFO 498f

#Install Shiny package and library
#install.packages("shiny")
library(shiny)

#Type of Interface for this application
shinyServer(
  function(input, output){
    
    #Renders Histogram
    output$hist <- renderPlot({
      coloumn <- as.numeric(input$variable)
      
      #Creates Histogram
      hist(iris[,coloumn], 
           breaks = seq(0, max(iris[,coloumn]), l = input$bins + 1), 
           col=input$color, main = "Histogram of Iris Dataset", 
           xlab = names(iris[coloumn]))
    })
  }
)
