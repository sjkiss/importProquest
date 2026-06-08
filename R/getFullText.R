getFullText<-function(x){
  if(any(grepl('Full [Tt]ext:', x))) {
  start <- grep('Full [Tt]ext:', x)
  end <- grep('(^CAPTION:)|(^Subject:)|(^Title:)', x)
  end <- end[which(end > start)[1]] - 1
  return(gsub("Full [Tt]ext:", '', x[start:end]))
  } else {
  return(NA)
}
}
