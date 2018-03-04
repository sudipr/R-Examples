# read the file
hospital<-read.csv(file.choose(),header = TRUE)
head(hospital)

str(hospital)

#table gives the occurence of each value in it
table(hospital$AGE)

#generates the output in graph forat for better understanding
plot(table(hospital$AGE))

install.packages("dplyr")
library("dplyr")


# maximum expenditure  
totalCost<-tapply(hospital$TOTCHG, hospital$AGE, FUN=sum)
totalCost

#maximum hospitilization and expenditure

total<-tapply(hospital$TOTCHG,hospital$APRDRG,FUN=sum)
total
summary(total)
summary(hospital$APRDRG)

#Analyze if race of patient is related to hospitalization cost
str(hospital)
hospitalRace<-as.factor(hospital$RACE)
summary(hospitalRace)

any(is.na(hospital))

hospital<-na.omit(hospital)

model<-aov(TOTCHG~RACE,data=hospital)
model

summary(model)

table(hospital$RACE)


model<-glm(TOTCHG ~ AGE+FEMALE,data=hospital)
summary(model)

glm(TOTCHG~AGE,data=hospital)
range(hospital$AGE)
newdata<-data.frame(AGE=13,FEMALE=1)

predict(model,newdata,type="response")


summary(hospital$RACE)



hospital$RACE<-as.factor(hospital$RACE)
hospital$FEMALE<-as.factor(hospital$FEMALE)
head(hospital)
str(hospital)

model<-glm(LOS~AGE+FEMALE+RACE,data=hospital)
summary(model)

model1<-glm(TOTCHG~.,data=hospital)
summary(model1)







































