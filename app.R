library(shiny)

ui <- fluidPage(
  includeCSS("www/style.css"),
  sliderInput(inputId = "slider_1",
              label = "Select a number",
              min = 1,
              max = 10,
              value = c(4,6)),
  sliderInput(inputId = "slider_2",
              label = "Second slider",
              min = 10,
              max = 20,
              value = c(12,16)),
  textOutput(outputId = "output_text")
)

server <- function(input, output) {
  # Render the product of the input values tas text
  output$output_text <- renderText({ 
    as.numeric(input$slider_1) + as.numeric(input$slider_2)
  })
}

shinyApp(ui = ui, server = server)
