#set working directory and import datafiles
setwd("D:/SimpliLearn_DataScience/R-Examples/Titanic")

#Load data from dataset
train<-read.csv("train.csv")
test<-read.csv("test.csv")

library(rpart)



fit<-rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
           data = train,method = "class")

#Examine the tree
plot(fit)
text(fit)

#Load external packages for better data visualization
 install.packages('rattle')
 install.packages('rpart.plot')
 install.packages('RColorBrewer')
 library(rattle)
 library(rpart.plot)
 library(RColorBrewer)
 
 fancyRpartPlot(fit)
 
  Prediction <- predict(fit, test, type = "class")
  submit <- data.frame(PassengerId = test$PassengerId, Survived = Prediction)
  write.csv(submit, file = "Example3DecisoinTree.csv", row.names = FALSE)