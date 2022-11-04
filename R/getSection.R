getSection<-function(x){
    #Make a data.frame
  section<-gsub('Section:', '', grep('^Section:', x, value=TRUE))
}
