library(shiny)

# Define UI for application that calculates the Fatt Free Mass Index
shinyUI(fluidPage(
  # Application title
  titlePanel("Fat Free Mass Index Calculator"),
  p("Instructions:  To calculate your fat free mass index enter your height, weight and body fat percentage in the left
    side panel windows.  There are three windows, one for your height in feet, one for your
    height in cm, and one for your weight in kg and body fat percentage in %.  When you 
    have your information entered, press the Calculate FFMI button at the bottom.  The 
    calculator comes preset with a height of 185 cm and a weight of 80 kg and 10 % body fat.
    Normally from a ideal gentetic potential a theoretic maximum is assumed at a value of 25.
    If FFMI shows values higher than 25 one can assume a misusage os anabilic steroids."),
  br(),
  # Sidebar with a three text inputs
  sidebarLayout(position = "left",
                sidebarPanel(
                  h2('Enter your physical data:'),
                  h3('Height'),
                  numericInput("height", label = h4("cm"),max=220,min=2, value = 175),
                  h3('Weight'),
                  #     This is some code that if I wanted to use a slider instead of text input 
                  #      sliderInput(inputId = "wlbs", label = h4("pounds"),
                  #                  min = 50, max = 350, value = 165)
                  numericInput("wkg", label = h4("kilograms"),max=350,min=15, value = 80),
                  h3('Body fat'),
                  numericInput("kfa", label = h4("%"),max=60,min=2, value = 10),
                  submitButton('Calculate FFMI')
                ),
                # Show the data entered and the calculated BMI
                mainPanel(
                  # plotOutput("distPlot")
                  h3('You entered the following information:'),
                  h4(textOutput("heightsummary")),
                  h4(textOutput("weightsummary")),
                  h4(textOutput("kfasummary")),
                  br(),
                  h3('Calculated Fat Free Mass Index:'),
                  h4(textOutput("ffmi"))
                )
  )))