#https://www.techgig.com/challenge/question/machine-learning-test/ZnYwbVFnVzBBY3c2NHVIT01GOGNDckxDNU9mZUZSOHdoWEdzTTVGL3d5QT0=/1

#Read Train and Test data
modelTrain<-read.csv(file.choose(),header = TRUE)
modelTest<-read.csv(file.choose(),header = TRUE)

head(modelTrain)
head(modelTest)