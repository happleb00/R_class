mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)


###########TODO - subset based on a STate_Prov
###########TODO - write to a .tsv file


#Version 1: Finds a series of localities and compares to itself, adds if dup to dataframe
#=======================================

dupelist <- unique(mexloc$Locality)
head(dupelist)
for (i in dupelist){
  listfiles <- mexloc$Locality
  head(listfiles)
  somevariable <-  ifelse(i in listfiles > 1, TRUE, FALSE) 
  }

  somevariable

#TODO add cbind to mexloc
help(return)
#=======================================


#Version 2: Finds a series of localities and compares to itself, adds if dup to dataframe
#=======================================
mexloc <- unique(mexlocfull[,c(4:9)])
mexloc.locality <- subset(mexloc, select = Locality) #same as mexloc$locality?

head(mexloc)
nrow(mexloc)

for (i in mexloc){
  dupe <- duplicated(i) #TODO: how to make this test more fuzzy? 
}
mexdup <- cbind(mexloc, dupe)
head(mexdup)
#=======================================




###########====working space below---older code
help(subset)


## a different approach with nested for loops
for (i in 1:10){
  for (j in 1:10){
    return <-  ifelse(unqloc[i,]==mexloc[j,], print(i), print("no"))
  }
}
#head(listfiles) this is only printing the last value(300)
#head(dupelist) also only printing the last value(300)
return

help(unique)

help("duplicated")
help("all.equal")
help("Compare")
help("match")
help(ifelse)
help(rbind)
help(order)
