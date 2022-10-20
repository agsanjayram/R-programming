input <- mtcars[,c("mpg","disp","hp","wt")]

View(mtcars)

# Create a linear model
model <- lm(mpg ~ disp + hp + wt, data = input)
print(model)
model$coefficients[1]
coef(model)[3]

b<- coef(model)[1]
b
displ<- coef(model)[2]
displ
hp<- coef(model)[3]
wt<- coef(model)[4]

mpg1 <- b + displ*160 + hp*110 + wt*2.62
checkmpg = data.frame(disp=300, hp=200, wt=2.91)
result = predict(model, checkmpg)
print(result)

#plot the model
plot(input$disp, input$mpg, col="blue",  main="Height and weight inLinear Regression Model")
