n=c(2,3,5)
s=c("aa","bb","cc")
b=c(TRUE,FALSE,TRUE)
df=data.frame(n,s,b)
df
class(df)
library(help=datasets)
?mtcars #help/desc of car dataset
fix(mtcars) #view the table of dataset
nrow(mtcars) #number of rows
ncol(mtcars) #number of columns
head(mtcars) #top 6 default
head(mtcars,15) #top 15
mtcars[1,2]     #first row and second column
mtcars[[9]]     #To retrive 9th column
mtcars[9]       #To retive 9th row with names not only values
mtcars$am       #To diplay particular coln
mtcars["Mazda RX4","cyl"] #note case-sensitive
mtcars[c("mpg","hp")] #To display both column
mtcars[2:5,]
mtcars[30,]
mtcars[c(3,24),] #3 and 24 rows with all column
L=mtcars$am==0
L
mtcars[L,]
mtcars[L,]$mpg
