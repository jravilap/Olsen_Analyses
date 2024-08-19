#Remove zeroes
rm.zeros <- function(A){
  for(i in 1:nrow(A)){
    b<-A[i,]==0
    b[is.na(b)] <- FALSE
    A[i,b]<-NA
  }
  return(A)
}



#Impute with half/min Outputs should be the same
fun.impute <- function(A){
  for(i in 1:nrow(A)){
    b<-A[i,]==0
    b[is.na(b)] <- FALSE
    A[i,b]<-NA
    m<-min(A[i,], na.rm=T)*0.5
    A[i,is.na(A[i,])] <- m
  }
  return(A)
}

##Function for Scree plots all methods
var.fun <- function(pcaResults){
  suppressMessages(library(calibrate,quietly = TRUE))
  #Eigenvalues
  eig <- pcaResults$sdev^2
  #Variances in percentage
  variance <- round(eig*100/sum(eig),2)
  return(variance)
}
