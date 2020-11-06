library(shiny)

## Here we will be performing basic math operations as prescribed by the question provided to us. We shall do that as follows by using shiny application

shinyUI(
  navbarPage("Shinny Appli",
             tabPanel("Calc",
                      fluidPage(
                        titlePanel("performing basic msth ops using a calc"),
                        sidebarLayout(
                          sidebarPanel(
                            numericInput("x", "Choose the 1st num", 10),
                            numericInput("y", "Choose the 2nd num", 10),
                            selectInput("Operators", "Select Op",
                                        choices = c("Add","Subs","Mult" ,"Div"))
                            
                          ),
                          mainPanel(
                            h2("final result:"),
                            textOutput("sol")
                          )
                        )
                      )
             ),
             
             
             tabPanel("Check source Code",
                      h2("Code can be found on my GitHub"),
                      hr(),
                      h3("Developing Data Products Week 4 Peer Graded Assignment"),
                      helpText("This is basic math calculator which perfoms operations like addition, subtraction, multiplication and division 
                  of two numbers given by the user")
             ) ,
             
             tabPanel("GitHub Info",
                      a(""),
                      hr(),
                      h2("The GitHub link I provided above is for code of server.R and ui.R of this shiny app")
             )
  )
)

