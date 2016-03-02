#Jacob Burke
#March 1, 2015
#INFO 498f

#Install Shiny package and library
#install.packages("shiny")
library(shiny)

#Type of Interface for this application
shinyUI(
  
  fluidPage(
  
    #Title of the application
    titlePanel(title = h2("Assignment 8 - Building Applications", align = "center")),
    
    #Sidebar panel
    sidebarLayout(
      sidebarPanel(
        
        #Select what coloumn of the Iris Dataset you wish to see
        selectInput("variable", 
                    "Iris Dataset Variable:",
                    choices = c("Sepal.Length" = 1, 
                                "Petal.Length" = 2, 
                                "Sepal.Width" = 3, 
                                "Petal.Width" = 4), 
                    selected = 1),
        br(),
        
        #Select the number bins in the Histogram
        sliderInput("bins", 
                    "Number of Bins:",
                    min = 5, 
                    max = 50, 
                    value = 25),
        br(),
        
        #Selects the color of the bins
        radioButtons("color", 
                     "Color:", 
                     choices = c("Blue", 
                                 "Red", 
                                 "Yellow", 
                                 "Green", 
                                 "Orange", 
                                 "Black"), 
                     selected = "Blue")
    
          ),
        
        #Main Panel that produces/outputss the Histogram
        mainPanel(
          plotOutput("hist") 
        )
      )
    )
)
