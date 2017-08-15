

library(shiny)
shinyServer(function(input,output) {
  output$interest <- reactive({
       P <- as.numeric(input$principal)
       N <- as.numeric(input$basis) * 12
       R <- as.numeric((input$rate / 12)/100)
         round( (R * P)/(1 - '^'((1 + R),-N)),2 )
  })
})
