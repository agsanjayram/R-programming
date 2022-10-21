dataset = read.csv("./predictive analyisis/dataset/position.csv")
dataset = dataset[2:3]

#fitting linear regression to the dataset
lin_reg = lm(formula = Salary ~ Level, data = dataset)
summary(lin_reg)

#fitting polynomial regression to the dataset
dataset$Level2 = dataset$Level^2
dataset$Level3 = dataset$Level^3
dataset$Level4 = dataset$Level^4
#visualize the linear regressition model
library(ggplot2)
plot1 = ggplot(dataset, aes(x = Level, y = Salary,color = Level))+ggtitle("Polynomial Regression")+
xlab("Level")+ ylab ("salary")

#visualize the linear polynome regression model(for better representation)
x_grid = seq(min(dataset$Level),max(dataset$Level),0.1)
ggplot() +  geom_point(aes(x = dataset$Level, y = dataset$Salary),colour = 'red')+geom_line(aes(x = x_grid, y = predict(lin_reg, newdata = data.frame(Level = x_grid,level2 =x_grid^2, level3 = x_grid^3,level4 = x_grid^4))), color='blue')+ggtitle("polynome regression truth or bluffed")+xlab("level") + ylab("salary")

#predticting  the result with the linear regression
Y_predicted =  predict(lin_reg,newdata = data.frame(Level = 6.5,level2 = 6.5^2, level3 = 6.5^3,level4 = 6.5^4))
