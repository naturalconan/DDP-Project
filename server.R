library(shiny) 

shinyServer( function(input, output) {
        output$inputPressure <- renderText(paste(input$systolicPressure,'/',input$diastolicPressure))
        output$prediction <- renderText({
                if(input$systolicPressure >140 || input$diastolicPressure>90) 
                {"You are in a high blood pressure status."}
                else if(input$systolicPressure >120 || input$diastolicPressure>80)
                {"You are in a pre-high blood pressure status."}
                else if(input$systolicPressure >90 || input$diastolicPressure>60)
                {"You are in an ideal blood pressure status."}
                else {"You are in a low blood pressure status."}
        })
} )