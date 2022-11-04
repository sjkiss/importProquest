getPublication<-function(x){
    #Make a data.frame
  origin<-gsub('Publication title:', '', grep('^Publication title:', x, value=TRUE))
}
