getTitle<-function(x){
  title<-gsub('Title:', '', grep('^Title:', x, value=TRUE))
}
