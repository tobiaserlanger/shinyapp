shinyUI(
        pageWithSidebar(
        # Application title
        headerPanel("Body Mass Index (BMI) Calculator by Tobias"),
                
        sidebarPanel(
                h6('1. Enter your weight (in kg) and height (in cm).'),
                h6('2. Click the "submit" button to calculate the BMI.'),
                h6('3. Below the calculated BMI you can look up in which BMI group you are.'),
                numericInput('weight', 'Body weight in kg', 75, min=25, max=500, step=1),
                numericInput('height', 'Body height in cm', 175, min=50, max=250, step=1),
                submitButton('Submit')
        ),
        mainPanel(
                h4('You entered following weight in kg'),
                verbatimTextOutput("inputValue1"),
                h4('You entered following height in cm'),
                verbatimTextOutput("inputValue2"),
                h4('Which resulted in a BMI of '),
                verbatimTextOutput("BMI"),
                h5('Underweight: <18.5; Normal: 18.5-25.0; Overweight: 25.1-30.0; Obese: >30')
                )
        )
)