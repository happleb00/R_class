
##--------USA georeferenced data--------

longrev.dat <- read.csv("occurrence_raw.csv", header = TRUE, stringsAsFactors = FALSE)
longrev <- longrev.dat[c(93,31,136,33,39:40)] ##location data/georeference columns

longrev.US <- subset(longrev, dwc.country == "United States") ##subset of US data
unique.longrev.US <- unique(longrev.US) ##makes a list of unique localities in the dataset (no duplicates)
#head(unique.longrev.US)
colnames(unique.longrev.US) <- c("Locality", "Country", "State_Province", "County", "Latitude", "Longitude")

write.csv(unique.longrev.US, file = "longrev_US.csv")


##--------MEXICO georeferenced data--------

longrev.dat <- read.csv("occurrence_raw.csv", header = TRUE, stringsAsFactors = FALSE)
longrev <- longrev.dat[c(93,31,136,33,39:40)] ##location data/georeference columns

longrev.MEX <- subset(longrev, dwc.country == "MEXICO") ##subset of US data
unique.longrev.MEX <- unique(longrev.MEX) ##makes a list of unique localities in the dataset (no duplicates)
#head(unique.longrev.MEX)
colnames(unique.longrev.MEX) <- c("Locality", "Country", "State/Province", "County", "Latitude", "Longitude")

write.csv(unique.longrev.MEX, file = "longrev_MEX.csv")



##--------subsetting by state then binding to create organzied data frame--------
#read csv
#comment block
#usa mexico and canada
some data frame <- allLoc[which(CA_PA_dat$Longitude > 0), c("Locality","Longitude","STate")]

longrev.CA.dat <- subset(unique.longrev.US,  State_Province== "California")
longrev.PA.dat <- subset(unique.longrev.US,  State_Province== "Pennsylvania")
longrev.CA.PA <- rbind(longrev.CA.dat,longrev.PA.dat)
charrmv.CA.PA <- gsub("[^[:alnum:]///'\\s]","", longrev.CA.PA$Locality)
#head(charrmv.CA.PA)
CA_PA_dat <- cbind(longrev.CA.PA,charrmv.CA.PA)
#head(CA.PA)

write.csv(CA_PA_data, file = "CA.PA.csv")
#unique list of states
#for each state, subset to state, process and add to text file

reverse <- function(CA_PA_dat){
  CA_PA_dat[which(CA_PA_dat$Longitude > 0)]
  for(i in CA_PA_dat){
  print(CA_PA_dat["Locality"])
  }
}

reverse(CA_PA_dat)


##write to text file and append file for each state



help(which)



lapply(longrev.PA,names)


##--------------------------
