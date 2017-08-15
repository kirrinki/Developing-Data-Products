

library(shiny)

##UI for Mortgage Amount Calculator

shinyUI(fluidPage(
  titlePanel("Simple Mortgage Amount Calculator"),
  sidebarLayout(
    sidebarPanel(
      numericInput("principal",label = h3("Principal amount"), value=0),
      sliderInput("rate", label = h3("Interest Rate(%)"), min = 0, 
                  max = 10, value = 0, step=0.01),
      selectInput("basis", label = h3("Loan Terms (No Of Years)"), 
                  choices = list("5" = 5, "10" = 10,"15" = 15,"20" = 20, "30" = 30), 
                  selected = 1),
      submitButton("Submit")
        
    ),
    mainPanel(
      h3("Mortgage Amount Per Month:"),
      h3(textOutput("interest"))
    )
  )
))
