#example usage of r api. May be out of date at moment
#api
#rdocumentation.org
#install.packages("devtools")
#install.packages("jsonlite")
#install.packages("grid")
#install_github("ropensci/plotly")
#install_github("idigbio/ridigbio")
#install.packages("rnoaa")
install.packages("gridExtra")
library("ridigbio")
library("grid")
library("gridExtra")
library("rnoaa")
library("plotly")
library("jsonlite")

??ridigbio

##top instution 
tops <- idig_top_records(top_fields=c("institutioncode","genus"), count=3)

names(tops$institutioncode)

#NOAA API
download.file("http://acis.ufl.edu/~mcollins/r_pkg_lesson.R",destfile="r_pkg_lesson.R")

library("ridigbio")
query <- list("collector"="Schuh")
df <- idig_search_records(rq=query, limit=100)
df$daycollected <- as.numeric(as.POSIXlt(df$datecollected)$yday==359)
plot(df$daycollected, df$geopoint.lat)

#get API token from NOAA
#http://www.ncdc.noaa.gov/cdo-web/token
#SrZCbWNdDmfPHASvcjlwdFUWnlXdeZTK

