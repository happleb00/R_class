mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)


###########TODO - subset based on a STate_Prov
###########TODO - write to a .tsv file



#Version 1: Finds a series of localities and compares to itself, adds if dup to dataframe
#=======================================

mexloc <- unique(mexlocfull[,c(4:9)])
#dupelist <- unique(mexloc$Locality)
#head(dupelist)
for (i in dupelist){
  listfiles <- mexloc$Locality
  #head(listfiles)
  duplicates <-  ifelse(mexloc$Locality > 2, TRUE, FALSE) 
  }
  test <- cbind(mexloc, duplicates)
  head(test)
  
  help(ifelse)

#TODO add cbind to mexloc

#=======================================


#Version 2: Finds a series of localities and compares to itself, adds if dup to dataframe
#=======================================
mex <- mexlocfull[,c(4:9)]
mexloc.locality <- subset(mexloc, select = Locality) #same as mexloc$locality?

for (i in mex){
  dupe <- duplicated(i) #TODO: how to make this test more fuzzy? 
}
mexdup <- cbind(mexloc2, dupe)
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

  
  mex <- mexlocfull[c(4:9), StringsAsFactors=FALSE]
  mexloc <- unique(mexlocfull[,c(4:9)], StringsAsFactors=FALSE)
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
  
  dupes("Veracruz")
  
  
  
  ###########7/14/15 -- print dupes by locality search (fuzzy?)--
  
  mex <- mexlocfull[c(4:9), stringsAsFactors=FALSE]
  mex.unique <- unique(mex, stringsAsFactors=FALSE)
  mex.locality <- subset(mex, select = Locality, stringsAsFactors=FALSE)
  mex.locality.unique <- unique(mex.locality, stringsAsFactors=FALSE)
  #head(mex.locality)
  #head(mex.locality.unique)
  #head(mex.unique)

  
  
  for (i in mex.locality.unique){
      match.test <- match(i, mex.locality, nomatch = NA_integer_, incomparables = NULL)
  }
  
 return(match.test) ##why using return here? is this a function?
  
match(mex.unique[[c(1)]], mex[[c(1)]])



match("1.5 mi W of Parque Sierra San Pedro Martir" %in% mex.locality.unique[[1]], "1.5 mi W of Parque Sierra San Pedro Martir" %in% mex.locality[[1]])

  

  help("match")
  help("if")


#===================================
#===================================
#new packages to play with
install.packages("plyr") #do only once
library("plyr")

##add an identifier row Katja July 14
setwd("~/Desktop/Dropbox/RClassHeather/R_class")
mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)
head(mexlocfull)
mexlocfull$generated_uid <- 1:nrow(mexlocfull)
ncol(mexlocfull) #see how many columns there are in data frame

mex <- mexlocfull[c(4:9,54)] #54 is the newly generated column
head(mex)
mexlocSonora <- subset(mexlocfull, State_Prov == "Sonora", select = c(4:9,54))
head(mexlocSonora)

numbers <- subset(count(mexlocSonora, "Locality"), freq > 1)
counts <- count(mexlocSonora, c("Locality", "State_Prov"))
numbers
counts

nrow(mexlocSonora)
uniqueSenora <- unique(mexlocSonora$Locality) 

"%in%" <- function(x, table) match(x, table, nomatch = 0) > 10#can modify your %in%
indexes <- which(mexlocSonora$Locality %in% uniqueSenora)
for(i in indexes){
  print(mexlocSonora[i,"Locality"])
}



