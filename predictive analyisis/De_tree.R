library(rpart)
library(rpart.plot)
View(iris)
set.seed(678)
s=sample(nrow(iris),100)

iris_train=iris[s,]
iris_test=iris[-s,]
?rpart

# Decision tree
iris_tree=rpart(Species~.,data=iris_train,method="class")
plot(iris_tree)
text(iris_tree)

rpart.plot(iris_tree)
rpart.plot(iris_tree,type =4,extra=100)


# Predictions
iris_pred=predict(iris_tree,iris_test,type="class")
iris_table = table(iris_test[,5],iris_pred)
iris_table
iris_performanc = (sum(diag(iris_table))/sum(iris_table))*100
iris_performanc
