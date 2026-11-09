#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {
    
    output$cleanedText <- renderText({
      inputref <- input$text
      outText <- inputref
      charsplit <- strsplit(outText, "")[[1]]
      outText <- ""
      citeStart = FALSE
      for(ch in charsplit){
       
        if(ch == '['){
        
          citeStart = TRUE
        }
        
        if(citeStart == FALSE){
          outText<- paste(outText, ch, sep = "")

        }else if(ch == ']'){
          citeStart = FALSE
        }
        
      }
      
      paste(outText,"")  
        #https://stackoverflow.com/questions/26721340/iterating-over-characters-of-string-r
        # https://www.w3schools.com/r/r_variables_concat.asp
        # Split the entire input into a vector of characters
        # Append characters
        # When encountering an open bracket
        
        
  
        # generate bins based on input$bins from ui.R
        #x    <- faithful[, 2]
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white',
             
        #xlab = 'Waiting time to next eruption (in mins)',
             #main = 'Histogram of waiting times')

    })|>
      bindEvent(input$sendtext) 

}
