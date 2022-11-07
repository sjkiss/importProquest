getDate<-function(x){
    #Set If() condition
  if(any(grepl('^Publication date:', x))) {
    datetimestamp<-as.Date(
      gsub('Publication date: ', '', grep('^Publication date:', x, value=TRUE)), format="%b %d, %Y")
    return(datetimestamp)
  } else {
    return(NA)
  }
}
