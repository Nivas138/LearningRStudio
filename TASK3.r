poker<-c(100,50,-150,200,-250)
roulette<-c(-350,150,100,-50,-100)
names(poker)<-c("mon","tue","wed","thus","fri")
names(roulette)<-c("mon","tue","wed","thus","fri")
poker
roulette
sum(poker)
sum(roulette)
poker["thus"]
poker["tue":"thus"]
poker[2:4]
poker[tue:thus]
total<-poker+roulette
poker[1:5]>0
poker[1:5]==TRUE
poker==TRUE
poker[1:5]
poker_bool<-poker>0
poker>0==TRUE
poker[poker_bool]
v1<-c(1,2,"HP",TRUE,15L,10+5i)
v1
print(v1)
class(v1)
v2<-c(1,2,TRUE,15L,10+5i)
class(v2)
v3<-c(1,2,TRUE,15L)
class(v3)

