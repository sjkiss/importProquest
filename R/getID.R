getID <- function(x){
  #Introduce an (if condition)
  if( any(grepl('^ProQuest document', x))){
    id<-as.numeric(
      gsub('ProQuest document ID: |ProQuest documentID', '',
           grep('^ProQuest document', x, value=TRUE)))
      return(id)} else {
             return(NA)
           }
  }
