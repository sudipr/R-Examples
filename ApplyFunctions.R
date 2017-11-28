#apply
mat<-matrix(c(1:4),2,2)
mat
apply(mat,1,sum)
apply(mat,2,sum)
apply(mat,1,mean)

#lapply apply 
#lapply function is used to apply functions to a list
list<-list(a=c(1,1),b=c(2,2),c=c(3,3))
list

lapply(list,sum)
lapply(list,mean)

#sapply is used to return a simplified result
list<-list(a=c(1,1),b=c(2,2),c=c(3,3))
list

sapply(list,sum)
sapply(list,mean)
class(sapply(list,sum))


#tapply
age<-c(24,24,25,27,29)
gender<-c('m','f','m','m','m')
fac_gender<-factor(gender)
fac_gender

tapply(age,fac_gender,mean)

#vapply specify the return type
list<-list(a=c(1,2),b=c(2,3),c=c(3,3))
list

vapply(list,mean,FUN.VALUE = double(1))

#mapply
list<-list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
list

mapply(rep,1:4,4:1)



