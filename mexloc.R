
mexlocfull <- read.table("PBI_Mexico_data.txt", header = TRUE, sep = "\t" ,fill = TRUE, stringsAsFactors = FALSE)
head(mexlocfull)
mexlocfull$generated_uid <- 1:nrow(mexlocfull)
#ncol(mexlocfull) 

mex <- mexlocfull[c(4:9,54)] 
mexlocSonora <- subset(mexlocfull, State_Prov == "Sonora", select = c(4:9,54))
head(mexlocSonora)

numbers <- subset(count(mexlocSonora, "Locality"), freq > 1)
counts <- count(mexlocSonora, c("Locality", "State_Prov"))
counts

uniqueSenora <- unique(mexlocSonora$Locality)


"%in%" <- function(x, table) match(x, table, nomatch = 0) > 5
indexes <- which(mexlocSonora$Locality %in% uniqueSenora)
for(i in indexes){
  print(mexlocSonora[i, "Locality"])
}



#------------7/15/15 - removed characters in Locality string--------------

charrmv <- gsub("[^[:alnum:]///'\\s]","", mexlocSonora$Locality)
###print(charrmv)
bindlist <- cbind(mexlocSonora,charrmv)
unique.charrmv <- unique(gsub("[^[:alnum:]///'\\s]","", mexlocSonora$Locality))
###print(charrmv)
###head(bindlist)

"%in%" <- function(x, table) match(x, table, nomatch = 0) > 5
indexes <- which(charrmv %in% unique.charrmv)
for(i in indexes){
  print(bindlist[i, "Locality"])
}

match(mi)

help("which")

which()

#---------7/16/15

"%in%" <- function(x, table) match(x, table, nomatch = 0) > 5
indexes <- which(charrmv %in% unique.charrmv)
for(i in indexes){
  print(bindlist[i, "Locality"])
}
