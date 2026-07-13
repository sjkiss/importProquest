getDate <- function(x){
  raw <- gsub('Publication date: ', '', grep('^Publication date:', x, value=TRUE))
  as.Date(gsub('\\s+', '', raw), format = "%b%d,%Y")   # kill ProQuest stray spaces
}
