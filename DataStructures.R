#vectors
numbers<-c(10,20,30)
chars<-c('a','b','c')
bools<-c(TRUE,FALSE)

#scalars
name<-"sudip"
age<-24
x<-TRUE

numbers[1]
numbers[c(1:4)]

#matrix
vector<-c(1,2,3,4)
foo<-matrix(vector,nrow=2,ncol=2)


foo[1,]
foo[,2]


#array
a<-matrix(rep(1,4),c(2,2))
b<-matrix(rep(2,4),c(2,2))
a
b
foo<-array(c(a,b),c(2,2,2))
foo

foo[,2,1]


#data frames
name<-c('raj','rani','ranveer')
age<-c(23,22,26)
gender<-c('male','female','male')
df<-data.frame(name,age,gender)

df$name

df[1,]
df[,2]
df[2,]

#factor
gender<-c('male','female','male','male')
gender_factor<-factor(gender)
gender_factor

#list
vec<-c(1:4)
mat<-matrix(vec,c(2,2))
vec
mat

li<-list(vec,mat)
li

li[1]

li[[2]][1,]





