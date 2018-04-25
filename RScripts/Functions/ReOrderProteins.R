ReOrderProteins <- function(vec) {
  # Proteins table from a MaxQuant search. The idea is to reorder each item alphabethically
  res <- vector(length = length(vec))
  for (i in seq_along(vec)) {
    el <- vec[i]
    vec1 <- strsplit(el, ";")[[1]]
    vec1 <- sort(vec1)
    val <- paste(vec1, collapse = ";")
    res[i] <- val
  }
  return(res)
}