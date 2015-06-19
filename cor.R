## "Write a function that takes a directory of data files
## and a threshold for complete cases and calculates the
## correlation between sulfate and nitrate for monitor 
## locations where the number of completely observed cases
## (on all variables) is greater than the threshold. The
## function should return a vector of correlations for the
## monitors that meet the threshold requirement."


id <-  1:3
files_list <- list.files("data_to_use", full.names = TRUE)
sumdat <- data.frame()
for (i in 1:3) {
  dat <- read.csv(files_list[i])
  sulfatesum <- sum(complete.cases(dat$sulfate))
  nitratesum <- sum(complete.cases(dat$nitrate))
  sumdat <- rbind(sumdat, c(i, sulfatesum, nitratesum))
  colnames(sumdat) <- c("ID", "sulfate", "nitrate")
  #polsubset <- sumdat[,which(sumdat$sulfate > 200 & sumdat$nitrate > 200)] DOESN'T WORK
  #polsubset2 <- subset(sumdat, sulfate>200 | nitrate>200) NAME DOESNT WORK
  #cor(polsubset2$sulfate, polsubset2$nitrate)
  
}

#print(sumdat)
#print(sumdat$sulfatesum)
#print(sumdat$sulfate)
#print(polsubset)
#print(polsubset2)



## I'm not able to print the subsets, but when I run the subset string
## after "polsubset2 <-" I get the data that I want. Then I want to use
## the cor() function on polsubset2.