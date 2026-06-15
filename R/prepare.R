
#' prepare
#' @param path A character vector to the file location to be imported, processed with metadata extracted.
#' @returns A data.frame of document-level meta data and full text.
#' @examples
#' df<-prepare(path=system.file("extdata", "star.txt", package="importProquest"))
#' str(df)
#' @export
prepare <- function(path="path_name") {
  content <- readLines(path)
  # Delete superfluous content
  content <- content[1:(length(content) - 6)]
  content <- content[grep("^Links:", content, invert=T)]
  content <- content[grep("^https:", content, invert=T)]
  content <- content[grep("^Abstract:", content, invert=T)]
  content <- content[grep("^Language of", content, invert=T)]
  content <- content[grep("^Document URL:", content, invert=T)]
  content <- content[grep("^Copyright:", content, invert=T)]
  content <- content[grep("^Last updated", content, invert=T)]
  content <- content[grep("^Database:", content, invert=T)]
  content <- content[grep("^Subject:", content, invert=T)]
  content <- content[grep("^Publication info:", content, invert=T)]
  content <- content[grep("^CAPTION:", content, invert=T)]
  content <- content[grep("^CREDIT:", content, invert=T)]
  content <- content[grep("^Publisher:", content, invert=T)]
  content <- content[grep("^Place of:", content, invert=T)]
  content <- content[grep("^Publication subject:", content, invert=T)]
  content <- content[grep("^ISSN:", content, invert=T)]
  content <- content[grep("^Publication year:", content, invert=T)]
  content <- content[grep("^First page:", content, invert=T)]
  content <- content[grep("^Business indexing:", content, invert=T)]
  content <- content[grep("^Country of publication:", content, invert=T)]
  content <- content[grep("^Place of publication:", content, invert=T)]
  content <- content[grep(".", content)]
  # Skip file header: drop everything up to and including the first separator
  first_underscore <- grep("_______", content)[1]
  content <- content[(first_underscore + 1):length(content)]
  # Remove boilerplate blocks: pairs of underscore lines within 4 lines of each other
  underscore_idx <- grep("______________", content)
  if (length(underscore_idx) > 1) {
    diffs <- diff(underscore_idx)
    close_starts <- which(diffs <= 4)
    if (length(close_starts) > 0) {
      ranges_to_remove <- unlist(mapply(seq, underscore_idx[close_starts], underscore_idx[close_starts + 1]))
      content <- content[-ranges_to_remove]
    }
  }
  # Split the file at document separators
  num <- cumsum(grepl("______________", content))
  content <- split(content, num)
}

