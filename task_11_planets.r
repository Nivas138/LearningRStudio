#VECTOR_CREATION
name<-c("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune")
type<-c("Terrstial","Gas giant","Terrstial","Gas giant","Terrstial","Gas giant","Terrstial","Gas giant")
diameter<-c(0.382,0.949,1,0.532,11.209,9.449,4.007,3.883)
rotation<-c(58.64,-243.02,1,1.03,0.41,0.43,-0.72,0.67)
rings<-c(FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)

#DATAFRAME_CREATION
planets_df<-data.frame(name,type,diameter,rotation,rings)
planets_df
pd<-planets_df$diameter
pr<-planets_df$rings==TRUE
pri<-planets_df[pr,]
pri
min_dia<-min(pd)
min_dia
L<-planets_df$diameter==min_dia
L
ln<-planets_df[L,]$name
ln
min_with_ring<-min(pri$diameter)
min_with_ring
Lnew=planets_df$diameter==min_with_ring
Lnew
ln<-planets_df[Lnew,]$name
ln

