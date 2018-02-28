#set working directory and import datafiles
setwd("D:/SimpliLearn_DataScience/R-Examples/Titanic")

train<-read.csv("train.csv")
test<-read.csv("test.csv")

#Look at gender patterns
summary(train$Sex)
prop.table(table(train$Sex,train$Survived))
prop.table(table(train$Sex,train$Survived),1)

# Create new column in test set with our prediction that everyone dies
test$Survived<-0

# Update the prediction to say that all females will survive
test$Survived[test$Sex=='female']<-1

# Create submission dataframe and output to file
submit<-data.frame(PassengerID=test$PassengerId,Survived=test$Survived)
write.csv(submit,file='output2.csv',row.names = FALSE)

