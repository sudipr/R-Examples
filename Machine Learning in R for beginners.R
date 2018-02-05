#iris dataset
#Predict the flower class based on available attributes.

# Read the iris data
iris<-read.csv(file.choose(),header=FALSE)

head(iris)

names(iris)<-c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

iris

install.packages("ggvis")
library("ggvis")

#scatter plot
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()
iris %>% ggvis(~Petal.Length, ~Petal.Width, fill = ~Species) %>% layer_points()

cor(iris$Petal.Length,iris$Petal.Width)

x<-levels(iris$Species)

x

print(x[1])
cor(iris[iris$Species==x[1],1:4])

print(x[2])
cor(iris[iris$Species==x[2],1:4])

# Print Versicolor correlation matrix
print(x[2])
cor(iris[iris$Species==x[2],1:4])

# Print Virginica correlation matrix
print(x[3])
cor(iris[iris$Species==x[3],1:4])

iris

head(iris)

str(iris)

table(iris$Species)
round(prop.table(table(iris$Species))*100 , digits=1)

summary([c("Petal.Width", "Sepal.Width")])

summary(iris)

normalize<-function(x)
{
  num<-x-min(x)
  denom<-max(x)-min(x)
  return (num/denom)
}

iris_norm<-as.data.frame(lapply(iris[1:4],normalize))

summary(iris_norm)

set.seed(1234)

ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.67, 0.33))

#compose training dataset
iris.traning<-iris[ind==1,1:4]
head(iris.traning)

# compose test dataset
iris.test<-iris[ind==2,1:4]
head(iris.test)

# Compose `iris` training labels
iris.trainLabels <- iris[ind==1,5]

# Inspect result
print(iris.trainLabels)

# Compose `iris` test labels
iris.testLabels <- iris[ind==2, 5]

# Inspect result
print(iris.testLabels)


x <-2 
switch(6, 2+2, mean(1:10), rnorm(5))
X



y <-"fruit" 
switch(y, fruit ="banana", vegetable ="broccoli", "Neither")


centre <-function(x, type)
{ 
  switch(type, mean=mean(x), median=median(x),  trimmed =mean(x, trim = .1)) 
} 
x <-10 
centre(x, "mean")

f <-function()
{ 
  ## This is an empty function 
  } 
    class(f)
    
    world!"?"
    
    f<-function(num){hello <-"Hello, world!\n" +for(i inseq_len(num)){ cat(hello)}  chars <-nchar(hello)* num + chars } 
    meaningoflife <- f(3) 
    print(meaningoflife)
    
    lm<-function(x){ x * x } 
    lm
    
    m <- matrix(1:6, nrow = 2, ncol = 3)
    m
    m <- 1:10
    
    x <- 1:3
     y <- 10:12
     cbind(x, y)
     rbind(x, y)
     
     x<-list(1, "a", TRUE, 1 + 4i)
     x
     
     c<-fact(c("yes", "yes", "no", "yes", "no"))
     x <- factor(c("yes", "yes", "no", "yes", "no"))
     x <- factor(factor("yes", "yes", "no", "yes", "no"))
     
     x <- vector("list", length = 5)
     x
     
     x <- factor(c("yes", "yes", "no", "yes", "no"))
     table(x)
     
     x <- c(1, 2, NaN, NA, 4)
     x
     is.na(x)
     
     x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
     x
     ncol(x)
     
     m <- matrix(1:4, nrow = 2, ncol = 2)
     dimnames(m) <- list(c("a", "b"), c("c", "d"))
     m
     
     y <- data.frame(a = 1, b = "a")
     dput(y)
     
     x <- matrix(1:6, 2, 3)
     x[1,]
     
     x <- list(foo = 1:4, bar = 0.6)
     x[1]
     
     x <- list(foo = 1:4, bar = 0.6, baz = "hello")
     name <- "foo"
      x$name
      
      x <- list(aardvark = 1:5)
      x$r
      x