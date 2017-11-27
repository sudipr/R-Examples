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




