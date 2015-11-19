library(markdown)

shinyUI(pageWithSidebar(
  headerPanel("How many miles per gallon will your car go?"),
  sidebarPanel(
	h2('Enter your values:'),
	helpText('Hint: ','The results are automatically updated with every entry/update of the values in the fields below'),
    numericInput('wt1', 'Weight in lb/1000', 0, min = 0, max =1000),
	helpText('Hint: ','If the car weighs 3000 lb, just enter 3 in the field above'),
	radioButtons("am1", label = h3("Transmission type"),
        choices = list("Automatic" = 0, "Manual" = 1),selected = 0),
    helpText('Hint: ','Select one transmission type (Automatic is 0, Manual is 1)'),
	radioButtons("cyl1", label = h3("Number of cylinders"),
        choices = list("4" = 4, "6" = 6, "8" = 8),selected = 0),
	helpText('Hint: ','Select the number of cylinders your car has')
  ),
  mainPanel(
		tabsetPanel(
		tabPanel("Results",
        h4('You entered weight in pounds (lb)'),
        verbatimTextOutput("owt1"),
        h4('You selected transmission type'),
        verbatimTextOutput("oam1"),
        h4('You selected number of cylinders'),
        verbatimTextOutput("ocyl1"),
		br(),
		br(),
		h2('Expected miles per gallon'),
        verbatimTextOutput("ompg1")),
		tabPanel("Help",includeMarkdown("help.md"))
		)
  )
))

