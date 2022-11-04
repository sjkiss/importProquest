getSection <- function(x){
  section<-gsub('Section: ', '', grep('^Section: ', x, value=TRUE))
}

