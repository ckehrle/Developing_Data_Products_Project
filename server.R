library(shiny)
ffmi <- function(h,w,kfa){ 
  h <-h/100
  round((w*(100-kfa)/100)/(h*h)+6.3*(1.8- h))}
  
ffmistatus <- function(ffmi){
  if(ffmi<25){
    status = "to be ok"
  } else {status = "of possible usage of anabolic steroids "
  }
  return(status)
}
# Define server logic required to calculate FFMI
shinyServer(function(input, output) {
  output$heightsummary <- renderText({paste0("Height: ",input$height," cm")
  })
  output$weightsummary <- renderText({paste0("Weight: ",input$wkg," kilograms")
  })
  output$kfasummary <- renderText({paste0("body fat : ",input$kfa," %")
  })
  
  output$ffmi <- renderText({
    ffmical<-ffmi(input$height,input$wkg,input$kfa)
    paste0("Based on the input, your FFMI is: ",ffmical," and you are considered ",ffmistatus(ffmical))
  })
})