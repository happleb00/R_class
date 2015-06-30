## "Write a function that reads a directory full of files
## and reports the number of completely observed cases in
## each data file. The function should return a data frame
## where the first column is the name of the file and the
## second column is the number of complete cases."

## when i run this with just "sum(complete.cases(dat))", the
## data frame looks like this:
##   id nobs
## 1 30  463
## 2 29  463
## 3 28  463
## 4 27  463
## 5 26  463
## 6 25  463
## where 463 is the nobs for only id #25
## i need to figure out a way to get the nobs for each id

setwd("C:/Users/HLA/Documents")

complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, full.names = TRUE)
  nobsdata <- data.frame()
  for (i in id) {
    dat <- read.csv(files_list[i])
    nobs <- sum(complete.cases(dat))
  }

  data.frame(id, nobs)
}

complete("specdata", 30:25)


#------------ I pulled it out of the function so you can see what you are doing better.
id <-  1:3
#help(list.files)
files_list <- list.files("data_to_use", full.names = TRUE)
  nobsdat <- data.frame()
  for (i in 1:3) {
    dat <- read.csv(files_list[i])
    nobs <- sum(complete.cases(dat))
    nobsdat <- rbind(nobsdat, c(i, nobs))
   # print(nobs)
    head(dat)
  }
  
  nobsdat[1,]
  
  
  
  
  
  
  
  ###summed the number of cases of nitrate and sulfate then renamed the columns:
  
  
  id <-  1:3
  #help(list.files)
  files_list <- list.files("data_to_use", full.names = TRUE)
  sumdat <- data.frame()
  for (i in 1:3) {
    dat <- read.csv(files_list[i])
    sulfatesum <- sum(complete.cases(dat$sulfate))
    nitratesum <- sum(complete.cases(dat$nitrate))
    sumdat <- rbind(sumdat, c(i, sulfatesum, nitratesum))
    # print(nobs)
    head(dat)
    colnames(sumdat) <- c("ID", "sulfate", "nitrate")
  }
  
 sumdat
 
