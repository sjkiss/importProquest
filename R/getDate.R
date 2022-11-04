getDate<-function(x){
    #Make a data.frame
    datetimestamp<-as.Date(
      gsub('Publication date: ', '', grep('^Publication date:', x, value=TRUE)), format="%b %d, %Y")
  }
