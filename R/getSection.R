getSection<-function(x){
    #Set if()
  if(any(grepl('^Section:', x))) {
  section<-gsub('Section:', '', grep('^Section:', x, value=TRUE))
  return(section)
  } else{
    return(NA)
  }
}
