getTitle<-function(x){
    #Get any lines that start with Title,
  # Set out an if() condition to test if any of the lines of an article respond to the
  # regex '^Title: '. If any do (i.e. if there is a line with a Title )
  if (any(grepl('^Title: ', x))){
    #Then return the value of that regex, and then gsub out Title
    title<-gsub('Title: ', '', grep('^Title: ', x, value=TRUE))
    return(title)
    #Otherwise
  } else{
    #return a missing value
    return(NA)
  }
}
getTitle
