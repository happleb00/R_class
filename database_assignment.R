mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)


##data frame of relevant Mexico locality data:
mexloc <- mexlocfull[,c(4:9)]
head(mexloc)


## how to subset mexloc Localities - not sure if I will use this for anything yet:
#mexlocsub <- subset(mexloc, select = Locality)
#summary(mexlocsub)
head(mexlocsub)

###########TODO - subset based on a STate_Prov

## prints TRUE or FALSE for each row.
## TRUE - duplicate locality
## FALSE - there is no duplicate or the first of a set of duplicate localities is read.
dupe <- duplicated(mexloc)
head(dupe)

## list of unique duplicated localities
unqloc <- unique(mexloc, nmax=1)
#unqloc <- unique(mexloc[duplicated(mexloc),]) also works
#summary(unqloc)
head(unqloc)



for (i in 1:300){
  listfiles <- mexloc[i,]
  dupelist <- unique(mexloc[i,], nmax=1)
  return <-  ifelse(listfiles==dupelist, print(i)) ##my idea was to see if I am able to find the duplicates then print a UID # to locate them
}
#head(listfiles) this is only printing the last value(300)
#head(dupelist) also only printing the last value(300)
return


#Finds a series of localities and compares to itself, adds if dup to dataframe
#=======================================
mexloc <- unique(mexlocfull[,c(4:9)])
mexloc.locality <- subset(mexloc, select = Locality) #same as mexloc$locality?

head(mexloc)
nrow(mexloc)

for (i in mexloc){
  dupe <- duplicated(i) #how to make this test more fuzzy? #how to compare 2 different files?
}
mexdup <- cbind(mexloc, dupe)
head(mexdup)
#=======================================


help(subset)
help("duplicated")
help("all.equal")
help("Compare")
help("match")
help(ifelse)
help(rbind)
help(order)
