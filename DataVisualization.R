#barplot
count<-table(mtcars$gear)
count
barplot(count)
barplot(count,horiz=TRUE)
barplot(count,main="Simple Bar Plot",xlab="Improvement",ylab="Frequency"
        ,legend=rownames(count),col=c("red","yellow","green"))

#stacked barplot
count <-table(mtcars$vs,mtcars$gear)
barplot(count,main="Car distribution gear and vs",xlab="Number of gears"
        ,legend=rownames(count),col=c("grey","cornflowerblue"))

#grouped barplot
barplot(count,main="Car distribution gear and vs",xlab="Number of gears"
        ,legend=rownames(count),col=c("grey","cornflowerblue"),beside = TRUE)

#pie chart
install.packages('plotrix')
library('plotrix')
slices<-c(10,20,30,40,50)
lbls<-c('US','France','Australia','Germany','UK')
pie(slices,labels=lbls,main='Pie Chart')

pct<-round(slices/sum(slices)*100)
lbls<-paste(lbls,' ',pct,'%',seq='')
lbls
pie(slices,labels=lbls,main='Pie chart with %',col=rainbow(5))

pie3D(slices,labels=lbls,main='Pie chart with %',col=rainbow(5),explode=0.0)

#histogram
hist(mtcars$mpg)
hist(mtcars$mpg,breaks = 10,col="lightgreen")
#density plot
density_data<-density(mtcars$mpg)
plot(density_data)
plot(density_data,main = 'kernel density plot')
polygon(density_data,col="skyblue",border="black")

#linechart
months<-c(0,1,2,3,4,5,6,7,8,9)
weights<-c(2.4,3.5,1.4,1.6,5.7,3.5,4.7,2.8,1.7,2.4)
plot(months,weights,main="Baby weight chart")
plot(months,weights,main="Baby weight chart",type='b')

#box plot
vec<-c(3,2,5,6,4,8,1,2,3,2,4)
summary(vec)
boxplot(vec,varwidth = TRUE)

#heat maps
data<-read.csv(file.choose(),header = TRUE)
head(data)

data<-data.matrix(data[,-1])
heatmap(data,Rowv = NA,Colv = NA,col=heat.colors(256),scale = 'column')

#word clouds
install.packages('wordcloud')
library('wordcloud')
head(data)



