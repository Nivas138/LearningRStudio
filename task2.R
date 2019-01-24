setwd("C:\\Rstudio\\")
getwd()
library(datasets)

#3. Assoc with mining
install.packages("arules")
library(arules)
txn=read.transactions("MBAdata.csv",rm.duplicates = FALSE,format="single",sep=",",cols=c(1,2))
print(txn)
d<-read.csv("MBAdata.csv",header=TRUE,sep=",")
d
txn@itemsetInfo
txn@itemInfo
image(txn)
rules<-apriori(txn,parameter = list(supp=0.5,conf=0.9,target="rules"))
inspect(rules)

