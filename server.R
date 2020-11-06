library(shiny)

shinyServer(function(input, output) {
  
  output$solution <- renderText({
    
    switch(input$Operators,
           "Addition" = input$x + input$y,
           "Substraction" = input$x - input$y,
           "Multiplication" = input$x * input$y,
           "Division" = input$x / input$y)
    
  })
  
})