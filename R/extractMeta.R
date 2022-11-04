
extractMeta<-function(y){
  #Run getDate to get dates
  dates<-purrr::map(y, getDate)
  dates<-purrr::reduce(dates,c)
  #Run getTitle to get Title
  titles<-purrr::map(y, getTitle)
  titles<-purrr::reduce(titles,c)
  #Run Publication Title to get Publication Title
  origin<-purrr::map(y, getPublication)
  origin<-purrr::reduce(origin,c)
  #Run to get section
  section<-purrr::map(y, getSection)
  section<-purrr::reduce(origin,c)
  #Run to get ProQuestID
ID<-purrr::map(y, getID)
ID<-purrr::reduce(ID,c)
  #Run get full text
  text<-purrr::map(y, getFullText) %>%
    purrr::map(., function(x) paste(x, collapse=""))
  text<-purrr::reduce(text,c)
 df<-data.frame(titles, dates, origin, text, section, ID)
 return(df)
}

