complete<-function(directory,id=1:332){
  fileList<-list.files(path=directory,pattern = ".csv",full.names = TRUE)
  cas<-numeric()
  
  for(i in id){
    data<-read.csv(fileList[i])
    #values<-c(values,data[[id]])
    cas<-c(cas,sum(complete.cases(data)))
    
  }
  data.frame(id,cas)
}
