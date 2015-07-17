
##--------USA georeferenced data--------

longrev.dat <- read.csv("occurrence_raw.csv", header = TRUE, stringsAsFactors = FALSE)
longrev <- longrev.dat[c(93,31,136,33,39:40)] ##location data/georeference columns

longrev.US <- subset(longrev, dwc.country == "United States") ##subset of US data
unique.longrev.US <- unique(longrev.US) ##makes a list of unique localities in the dataset (no duplicates)
#head(unique.longrev.US)
colnames(unique.longrev.US) <- c("Locality", "Country", "State/Province", "County", "Latitude", "Longitude")

write.csv(unique.longrev.US, file = "longrev_US.csv")

##--------MEXICO georeferenced data--------

longrev.dat <- read.csv("occurrence_raw.csv", header = TRUE, stringsAsFactors = FALSE)
longrev <- longrev.dat[c(93,31,136,33,39:40)] ##location data/georeference columns

longrev.MEX <- subset(longrev, dwc.country == "MEXICO") ##subset of US data
unique.longrev.MEX <- unique(longrev.MEX) ##makes a list of unique localities in the dataset (no duplicates)
#head(unique.longrev.MEX)
colnames(unique.longrev.MEX) <- c("Locality", "Country", "State/Province", "County", "Latitude", "Longitude")

write.csv(unique.longrev.MEX, file = "longrev_MEX.csv")



#####################


help(sort)
