tub <- readLines("UniquePeptidesPknB/PknBTub.txt")
smeg <- readLines("UniquePeptidesPknB/PknBSmeg.txt")

tub <- tub[2:length(tub)]
smeg <- smeg[2:length(smeg)]

tub <- sapply(seq_along(tub), function(x) {
  substr(tub[x], 4, nchar(tub[x])-3)
})

smeg <- sapply(seq_along(smeg), function(x) {
  substr(smeg[x], 4, nchar(smeg[x])-3)
})

length(intersect(smeg, tub))
length(smeg)
length(tub)
length(setdiff(smeg, tub))
length(setdiff(tub, smeg))

require(gplots)
venn(list("tub"= unique(tub), "smeg"= unique(smeg)))
title("Unique peptides")
