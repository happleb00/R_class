mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)


###########TODO - subset based on a STate_Prov


#Version 1: Finds a series of localities and compares to itself, adds if dup to dataframe
#=======================================

dupelist <- unique(mexloc$Locality)
head(dupelist)
for (i in dupelist){
  listfiles <- mexloc$Locality
  #head(listfiles)
  somevariable <-  ifelse(dupelist$Locality > 1, TRUE, FALSE) 
  }

  somevariable
  
  help(ifelse)

#TODO add cbind to mexloc

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



#####=====NEW 7/9/15=========
##### Prints State_Prov for duplicates


mex <- mexlocfull[1:10,c(4:9)]
mexloc <- unique(mexlocfull[,c(4:9)])
mex.locality <- subset(mex, select = Locality)
#print(mex)
#print(mex.locality)

for (i in mex.locality){
  dupe <- duplicated(i)
  }
  #print(dupe)

mexdup <- cbind(mex, dupe)
mexdup.dupe <- subset(mexdup, select = dupe)
#print(mexdup)
  
dupeid <- function(dupe){
  ifelse(mexdup.dupe==TRUE, print(mexdup$State_Prov), print(mexdup$Locality))
  }

  dupeid(1:10)
  
  
  
#########Print dupes in a specific State_Prov

  
  mex <- mexlocfull[c(4:9)]
  mexloc <- unique(mexlocfull[,c(4:9)])
  mex.locality <- subset(mex, select = Locality)
  mex.states <- subset(mex, select = State_Prov)
  #print(mex)
  #print(mex.locality)
  
  for (i in mex.locality){
    dupe <- duplicated(i)
  }
  #print(dupe)
  
  mexdup <- cbind(mex, dupe)
  
  dupes <- function(State_Prov){
    ifelse(mexdup.dupe==TRUE, print(mexdup$Locality), print("NA"))
  }
  
  dupes("Veracruz[1:10]")
  