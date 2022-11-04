getID <- function(x){
    id<-as.numeric(gsub('ProQuest document ID: |ProQuest documentID', '', grep('^ProQuest document', x, value=TRUE)))
}

