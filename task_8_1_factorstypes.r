#nominal_type_factor
animals_vector<-c("Elephant","Giraffe","Donkey","Horse")
factor_animals_vector<-factor(animals_vector)
factor_animals_vector
#ordinal_type
temperature_vector<-c("High","Low","High","Low","Medium")
factor_temperature_vector<-factor(temperature_vector,order=TRUE,levels=c("Low","Medium","High"))
factor_temperature_vector

factor_animals_vector<-factor(animals_vector,order=TRUE,levels=TRUE)
factor_animals_vector
