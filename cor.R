
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

  
