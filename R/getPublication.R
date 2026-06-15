getPublication<-function(x){
  #Set If() condition
  if(any(grepl('^Publication title:', x))) {
  origin<-gsub('Publication title:', '', grep('^Publication title:', x, value=TRUE))
  return(origin) } else{
    return(NA)
  }
}
