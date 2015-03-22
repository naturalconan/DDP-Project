shinyUI(pageWithSidebar( headerPanel("Blood Pressure Evaluation"), 
        
        sidebarPanel(
        p('Please enter your systolic pressure and diastolic pressure in the below fields and click submit button.'),
        p('And then you will see the evaluation result on the right'),
        numericInput("systolicPressure", "Systolic pressure",100, min=0, max = 200, step =1),
        numericInput("diastolicPressure", "Diastolic pressure",80, min=0, max = 200, step =1),
        submitButton('Submit')),
        
        mainPanel(
                h3('Result of evaluation'),
                h4('You blood pressure is'),
                verbatimTextOutput('inputPressure'),
                h4('Which resulted in a prediction of '),
                verbatimTextOutput('prediction')
        ) ))