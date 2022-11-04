
#' prepare
#'
#' @param path A character vector to the file location to be imported, processed with metadata extracted.
#' @returns A data.frame of document-level meta data and full text.
#' @examples prepare(path="inst/star.txt")
#' @export

prepare <- function(path="path_name") {
 content<-readLines(path)
#Delete Superfluouous content
 content <- content[1:(length(content) - 6)]
 content<-content[grep("^Links:", content, invert=T)]
 content<-content[grep("^https:", content, invert=T)]
 content<-content[grep("^Abstract:", content, invert=T)]
 content<-content[grep("^Language of", content, invert=T)]
 content<-content[grep("^Document URL:", content, invert=T)]
 content<-content[grep("^Copyright:", content, invert=T)]
 content<-content[grep("^Last updated", content, invert=T)]
 content<-content[grep("^Database:", content, invert=T)]
 content<-content[grep("^Subject:", content, invert=T)]
 content<-content[grep("^Publication info:", content, invert=T)]
 content<-content[grep("^CAPTION:", content, invert=T)]
 content<-content[grep("^CREDIT:", content, invert=T)]
 content<-content[grep("^Publisher:", content, invert=T)]
 content<-content[grep("^Place of:", content, invert=T)]
 content<-content[grep("^Publication subject:", content, invert=T)]
 content<-content[grep("^ISSN:", content, invert=T)]
 content<-content[grep("^Publication year:", content, invert=T)]
 content<-content[grep("^First page:", content, invert=T)]
 content<-content[grep("^Business indexing:", content, invert=T)]
 content<-content[grep("^Country of publication:", content, invert=T)]
 content<-content[grep("^Place of publication:", content, invert=T)]
 content <- content[grep(".", content)]
 content<-content[grep("_______", content, invert=T)+1]
 #Split the file at num
 num <- cumsum(grepl("______________", content))
 content <- split(content, num)
#Run the extract meta data
content<-extractMeta(content)
content
}


