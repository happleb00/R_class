##create a function that will calculate the mean of one of two pollutants from 332 .csv files

pollutantmean <- function(directory, pollutant, id = 1:332) {
	files_list <- list.files(directory, full.names = TRUE)       ##calls data from all .csv in the folder
	dat <- data.frame()                                          ##creates empty data frame for rbind
	for (i in id) {                                              ##creates a loop
		dat <- rbind(dat, read.csv(files_list[i]))                 ##puts all .csv data in one frame
		}
	mean(dat[,pollutant], na.rm=TRUE)                            ##what i want to do with the data called
}

pollutantmean("specdata", "sulfate", 1:10)