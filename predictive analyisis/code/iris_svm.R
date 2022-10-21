data = iris
str(data)
summary(data)
#svm in iris
library(caTools)
set.seed(123)
split = sample.split(data$Species, SplitRatio = 0.75)
train = subset(data, split == TRUE)
test = subset(data, split == FALSE)

#svm model
library(e1071)
model = svm(formula=Species~.,data=train,type = 'C-classification',kernel= 'linear')
y_pred = predict(model,newdata=test[-5])

#plot
plot(model,train,Petal.Width ~Petal.Length,slice = list(Sepal.Width =3,Sepal.Length = 4))
plot(model,test,Petal.Width ~Petal.Length,slice = list(Sepal.Width =3,Sepal.Length = 4))

#confusion matrix

2022-10-21 15:46:15
