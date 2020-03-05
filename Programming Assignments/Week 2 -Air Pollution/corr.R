corr<-function(directory,threshold=0){
  fileList<-list.files(path=directory,pattern = ".csv",full.names = TRUE)
  cora<-numeric()
  
  df <- complete(directory)
  ids <- df[df["cas"] > threshold, ]$id
  cora <- numeric()
  
  for(i in ids){
    data<-read.csv(fileList[i])
    dff<-data[complete.cases(data),]
    cora<-c(cora,cor(dff$sulfate,dff$nitrate))
  }
 cora
}
