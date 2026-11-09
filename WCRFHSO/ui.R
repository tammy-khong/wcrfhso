#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Wikipedia Citation Remover"),

    # Sidebar with a slider input for number of bins
    mainPanel(
      textAreaInput("text", "Input text", value = "Wikipedia citation remove [1]", width='100%', height = '300px'),
      actionButton("sendtext", "Submit"),
      br(),
      textOutput("cleanedText")
    )
)
