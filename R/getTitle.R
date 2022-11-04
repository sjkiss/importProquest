getTitle<-function(x){
    #Make a data.frame
  title<-gsub('Title:', '', grep('^Title:', x, value=TRUE))
}
