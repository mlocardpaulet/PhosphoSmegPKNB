MakeCompMatrix <- function(conditions) {
  # Create a comparison matrix with all the comparison to make to compare all conditions in the vector conditions
  combinaisons <- expand.grid(conditions,conditions)
  for (i in 1:nrow(combinaisons)) {
    combinaisons[i,] <- sort(combinaisons[i,])
  }
  combinaisons <- combinaisons[!duplicated(combinaisons),]
  k <- sapply(1:nrow(combinaisons), function(x){combinaisons[x,1]!=combinaisons[x,2]})
  combinaisons <- combinaisons[k,]
}

