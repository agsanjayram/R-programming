View(mtcars)

str(mtcars)

# mtcars is a data frame with 32 observations on 11 variables.

split<-sample.split(mtcars, SplitRatio = 0.7)
train<-subset(mtcars, split==TRUE)
test<-subset(mtcars, split==FALSE)

# train and test are data frames with 22 and 10 observations on 11 variables.

train_scale <- scale(train[,1:4])
test_scale <- scale(test[,1:4])

