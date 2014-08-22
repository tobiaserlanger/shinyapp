BodyMassIndex <- function(weight, height) round((weight/(height/100)^2), 1)

shinyServer(
        function(input, output) {
                output$inputValue1 <- renderPrint({input$weight})
                output$inputValue2 <- renderPrint({input$height})
                output$BMI <- renderPrint({BodyMassIndex(input$weight, input$height)})
        }
)