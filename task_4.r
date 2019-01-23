matrix(0,3,4)
a<-1:12
matrix(a,3,4)
help(matrix)
matrix(a,byrow=TRUE,3,4)
matrix(1:9,byrow=TRUE,nrow=3)
s1<-c(460.998,314.4)
s2<-c(290.475,247.900)
s3<-c(309.306,165.8)
TOT_VEC<-c(s1,s2,s3)
matrix(TOT_VEC,byrow = TRUE,3,2)
names(s1)<-c("s1_us","s1_nonus")
names(s2)<-c("s2_us","s2_nonus")
names(s3)<-c("s3_us","s3_nonus")
TOT_VEC<-c(s1,s2,s3)
my_matrix<-matrix(TOT_VEC,byrow = TRUE,3,2)
rownames(my_matrix)<-c("s1","s2","s3")
colnames(my_matrix)<-c("us","non_us")
my_matrix
non_us<-my_matrix[1:3,"non_us"]
row_sums<-rowSums(my_matrix)
row_sums
combined<-cbind(my_matrix,row_sums)
combined
col_sums<-colSums(combined)
col_sums
combined_cols<-rbind(combined,col_sums)
combined_cols
