#svm regression model

set.seed(100)
x<-matrix(rnorm(40),20.2)

x
y= rep(c(-1,1),c(10,10))
y
x[y == 1 ,]
x[y == 1,] = x[y == 1,] + 1
x[y==-1,]
plot(x,col=y+3,pch=19)
library(e1071)
data = data.frame(x,y=as.factor(y))
data
data.svm = svm(y~.,data=data,kernel="linear",cost= 10,scale=FALSE)




