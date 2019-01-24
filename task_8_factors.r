f1<-factor(c("male","female","female","male","female","male","yes","no","yes","yes"))
f1
nlevels(f1)  #number of levels in numeric
levels(f1)   #prints all the levels
table(f1)   #prints count of each levels
f1<-factor(c("male","female","female","male","female","male","yes","no","yes","yes"),levels=c("male","female","yes","no"))
f1
