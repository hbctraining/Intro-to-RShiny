# User Interface
ui <- fluidPage(
  # The input text box
  textInput(inputId = "input_text", 
            label = "My input text"),
  # The output text
  textOutput(outputId = "output_text")
)

# Server
server <- function(input, output){
  # Render the text
  output$output_text <- renderText({
    input$input_text
  })
}

# Run the app
shinyApp(ui = ui, server = server)

