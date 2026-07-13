getDate <- function(x){
  # Only parse a date if the article actually has a Publication date line.
  # Otherwise return NA so the date vector stays the same length as the other
  # metadata fields (matching getTitle/getSection); without this guard an
  # article with no date line yields character(0) and shifts every column,
  # breaking data.frame() in extractMeta.
  if (any(grepl('^Publication date:', x))) {
    raw <- gsub('Publication date: ', '', grep('^Publication date:', x, value = TRUE))
    return(as.Date(gsub('\\s+', '', raw), format = "%b%d,%Y"))  # kill ProQuest stray spaces
  } else {
    return(NA)
  }
}
