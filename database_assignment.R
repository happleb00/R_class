mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)

mexloc <- mexlocfull[,c(4:9)]
#head(mexloc)

##how to subset mexloc Localities
#mexlocsub <- subset(mexloc, select = Locality)
#summary(mexlocsub)
#head(mexlocsub)

unqloc <- unique(mexloc, nmax=1)
#summary(unqloc)
#head(unqloc)

##how to subset unique Localities
#unqlocsub <- subset(unqloc, select = Locality)
#head(unqlocsub)
#all.equal(mexlocsub, unqloc)



for (i in 1:300){
  allfiles <- mexloc[i,]
  dupes <- duplicated(allfiles)
  return <- ifelse(subset(dupes, select = 1)==TRUE, print(hello), print(no))
}
head(return)
#head(allfiles)
#head(dupes)



help(unique)
help("duplicated")
help("all.equal")
help("Compare")
help("match")
help(ifelse)