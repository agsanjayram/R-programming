

#View(mtcars)

#str(mtcars)

library(e1071)
library(class)
library(caTools)

# mtcars is a data frame with 32 observations on 11 variables.

split<-sample.split(mtcars, SplitRatio = 0.7)
train<-subset(mtcars, split=TRUE)
test<-subset(mtcars, split=FALSE)

# train and test are data frames with 22 and 10 observations on 11 variables.
#sampling of data
train_scale <- scale(train[,1:4])
test_scale <- scale(test[,1:4])

View(train_scale)

#Fitting the model

classfy_knn <- knn(train=train_scale,test = test_scale,cl=train$carb,k=)

View(classfy_knn)


# confustion matrix

cm <- table(test$carb , classfy_knn)
View(cm)

#accuracy

accuracy <- function(x) {sum(diag(x))/(sum(rowSums(x)))*100}
accuracy(cm)


