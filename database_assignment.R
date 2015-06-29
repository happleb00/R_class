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


dupes <- duplicated(mexloc)
return <- if (dupes=TRUE, print(subset(mexloc, select = Locality)))
return

for (i in 1:10){
  dupes <- duplicated(mexloc[1:10])
  #head(dupes)
  return <- if (dupes$1 = TRUE, print(subset(mexloc[i], select = Locality)))
}
return


for (i in 1:10){
  return1 <- print(mexloc[i])
}
return1


help(unique)
help("duplicated")
help("all.equal")
help("Compare")
help("match")