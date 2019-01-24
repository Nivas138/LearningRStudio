setwd("C:\\Rstudio\\") #path setting
getwd() #
library(datasets) #1st step drop dataset to library
?lab1_01
rd<-read.table("lab1_01.txt",sep="|",header=TRUE) #reading table/csv depends on sourcee
rd
labdf=data.frame(rd) #create dataframe
labdf
dm<-dim(rd) #know its dimension
dm
cl_names<-names(rd) #know thw coln names
cl_names
head(rd)
top<-head(rd,10)
top
sum_lab1<-summary(rd) #look out summary for data cleaning
sum_lab1
ncol(rd)
nlab1<-labdf[,2:3]
nlab1
save(nlab1,file="newlab.Rdata")
load("newlab.Rdata")
sub<-subset(nlab1,nlab1$hinc>=10000&nlab1$hinc<=10000000)
summary(sub)
ncol(sub)
names(sub)
breaks<-c(0,23000,52000,82000,250000,999000) #numeric value range to categroise 0 is default
labels<-c("lower","middle","upper","uppermiddle","Rich") #equal no's categroy name excluding 0 in break 
c1<-cut(sub$hinc,breaks,labels) #column , break , values
c1
table(c1)
class(c1)

sub<-cbind(sub,c1)
sub

library(MASS)
with(sub,{
  hist(hinc,main="Distribution of income",freq=FALSE)
  lines(density(hinc),lty=2,lwd=2)
  xvals=seq(from=min(hinc),to=max(hinc),length=100)
  param=fitdistr(hinc,"lognormal")
  lines(xvals,dlnorm(xvals,meanlog=param$estimate[1],sdlog=param$estimate[2]),col="blue")
})

loghinc=log10(sub$hinc)
min(loghinc)
max(loghinc)
hist(loghinc,main="Distribution of income",freq=FALSE)
lines(density(loghinc),lty=2,lwd=2)
xvals=seq(from=min(loghinc),to=max(loghinc),length=100)
param=fitdistr(loghinc,"lognormal")
noc<-lines(xvals,dlnorm(xvals,meanlog=param$estimate[1],sdlog=param$estimate[2]),col="blue")
hd<-head(sub)
sub$c1=NULL
KM<-kmeans(sub,2)
KM
plot(sub,col=(KM$cluster))
