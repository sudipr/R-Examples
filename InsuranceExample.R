#Correralation ,Summarizing,Data Visulaization,Linear Regression

#Read the sample file
dataset<-read.csv(file.choose(),header=TRUE)

head(dataset)

#Find basic insight of the data for further analyisis
summary(dataset)

#Finding if payment is related to number of claims and number of insured policy years
cor(dataset$Claims,dataset$Payment)
cor(dataset$Insured,dataset$Payment)
plot(dataset$Claims)
plot(dataset$Insured)

# To find the increase or decresase of insurance payments
reg<-lm(dataset$Payment ~ dataset$Insured+dataset$Kilometres+dataset$Bonus+dataset$Make+dataset$Insured)
summary(reg)

#Dependent Variable : Claim
#Independent Variable:Kilometres,Zone,Bonus,Make and Insured

View(dataset)
reg<-lm(dataset$Claims~dataset$Kilometres+dataset$Zone+dataset$Bonus+dataset$Make+dataset$Insured)
summary(reg)
View(reg)
