install.packages('dplyr')  #install package
library('dplyr')           #load package

#select
head(mtcars)
select(mtcars,mpg,hp,disp)

select(mtcars,mpg:hp)

select(mtcars,miles_per_gallon=mpg)


#filter
head(mtcars)
filter(mtcars,cyl==4)
       
filter(mtcars,cyl==4 & hp>60)

filter(mtcars,cyl==4 | hp>60)
filter(mtcars,cyl==4 , hp>60)

#arrange
arrange(mtcars,cyl,disp)

arrange(mtcars,desc(cyl))


#mutate

mutate(mtcars,my_disp=disp/2)

#summarise
summarise(mtcars,mean(disp))
summarise(group_by(mtcars,cyl),mean(disp),sd(disp),max(disp),min(disp))