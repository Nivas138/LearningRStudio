priceCalculator<-function(hours,pph=40){
  net.price<-hours*pph
  round(net.price)
}
priceCalculator<-function(hours,pph=40){
  net.price<-hours*pph
  if(hours>100) net.price<-net.price*0.9
  if(public){
    tot.price<-net.price*1.06
  } else {
    tot.price<-net.price*1.12}
  
  round(net.price)
}

for(i in seq(1,20,2)){
  print(i)
  if(i%%2==0){
    print(i)
  }
}

