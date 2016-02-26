navbarPage(
  "Words Count Cloud",
  inverse = TRUE,
  tabPanel(
    "Home",
    fluidRow(
      column(7,
         h4("Enter your words here :"),
         HTML('<textarea id="typeWords" class="form-control" rows="23" cols="30">small regular regular big big big</textarea>'),
         br(),
         actionButton("update", "Process")
      ),
      column(5,
         fluidRow(
           plotOutput("plot")
         ),
         fluidRow(
           sliderInput("freq",
                       "Minimum Frequency:",
                       min = 1,  max = 50, value = 1),
           sliderInput("max",
                       "Maximum Number of Words:",
                       min = 1,  max = 300,  value = 100)
         )
      )
    )
  ),
  tabPanel("How to",
   fluidRow(
     column(8, offset = 2,
     h2("How to use"),
     hr(),
     p("* Just type in few words inside the textarea. Or you can just copy and paste it."),
     p("* Click ",strong("Process")," button for this app to generate words cloud based on words occurences.")
     )
   )        
  )
)