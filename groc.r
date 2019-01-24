data("Groceries")
library(arules)
fix(Groceries)
txn=read.transactions("Groceries.csv",rm.duplicates = FALSE,format="single",sep=",",cols=c(1,2))
print(txn)
d<-read.csv("Groceries.csv",header=TRUE,sep=",")
d
txn@itemsetInfo
txn@itemInfo
image(txn)
rules<-apriori(Groceries,parameter = list(supp=0.001,conf=0.5))
inspect(rules)

subrules<-rules[quality(rules)$conf>=0.8]
inspect(subrules)

rules_high_lift<-head(sort(subrules,by="lift"),3)
inspect(rules_high_lift)

