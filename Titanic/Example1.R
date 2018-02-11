#set working directory and import datafiles
setwd("D:/SimpliLearn_DataScience/R-Examples/Titanic")


train<-read.csv("train.csv")
test<-read.csv("test.csv")

#Examine the structure of dataframe
str(train)

#No of people survived
table(train$Survived)
prop.table(table(train$Survived))

# Create new column in test set with our prediction that everyone dies
test$Survived<-rep(0,418)

#Create submission dataframe and output to file
submit<-data.frame(PassengerId=test$PassengerId,Survived=test$Survived)
write.csv(submit,file="output1.csv",row.names=FALSE)
