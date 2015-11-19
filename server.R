library(datasets)

calcpredvalue<-function(am1,wt1,cyl1) {
	fit<-lm(mpg~factor(am)+wt+cyl,data=mtcars)
	coeffit<-summary(fit)$coef
	yhat<-coeffit[1,1]+coeffit[2,1]*as.numeric(am1)+coeffit[3,1]*as.numeric(wt1)+coeffit[4,1]*as.numeric(cyl1)
	return(yhat)
}


shinyServer(
  function(input, output) {
    output$owt1 <- renderText({input$wt1*1000})
    output$oam1 <- renderPrint({input$am1})
    output$ocyl1 <- renderPrint({input$cyl1})
	output$ompg1 <- renderPrint({calcpredvalue(input$am1,input$wt1,input$cyl1)})
  }
)