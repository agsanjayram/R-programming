library(caTools)
library(e1071)
library(class)

bc_data<-read.csv("./predictive analyisis/dataset/BREAST CANCER.csv")

View(bc_data)

table(bc_data$diagnosis)

bc_data$diagnosis<-factor(bc_data$diagnosis,levels = c("M","B"),labels = c("Bengin","Malignant"))

nor <- function(x) {return ((x-min(x))/(max(x)-min(x)))}

bc_norm <- as.data.frame(lapply(bc_data[,c(-2)],nor))

train <- bc_norm[1:469,]
test<- bc_norm[470:569,]
train_label <- bc_data[1:469,2]
test_label <- bc_data[470:569,2]

i<-1
t <-0
while(t!=100 && i<=100){
    knn_model <- knn(train=train,test = test,cl=train_label,k=i)
    cm <- table(test_label , knn_model)
    accuracy <- function(x) {sum(diag(x))/(sum(rowSums(x)))*100}
    t<-accuracy(cm)
    print(t)
    i<-i+1
}


 View(knn_model)
