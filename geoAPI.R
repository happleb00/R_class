#https://github.com/cran/ridigbio
#beginning use of ridigbio
#june 17, 2015
#for windows? install.packages("ridigbio")

#had to download mac binaries and install from desktop to get to work
install.packages("devtools")
library(devtools)
install.packages("ridigbio")
library(ridigbio)

#ignore this below, only if on a pesky mac
#http://cran.r-project.org/web/packages/ridigbio/index.html
#install.packages("/Users/kseltmann/Downloads/ridigbio_0.2.2.tgz", repos=NULL, dependencies=TRUE)
#library(ridigbio)
#install.packages("jsonlite")
#install.packages("rjson")

#examples from idigibo documentation
idig_search_records(rq=list(genus="acer"))
idig_search_records(rq=list(family="holothuriidae"))


#find all functions in package
lsp <- function(package, all.names = FALSE, pattern) 
{
  package <- deparse(substitute(package))
  ls(
    pos = paste("package", package, sep = ":"), 
    all.names = all.names, 
    pattern = pattern
  )
}

lsp(ridigbio)

#[1] "idig_count_media"    "idig_count_records"  "idig_meta_fields"    "idig_search"         "idig_search_media"  
#[6] "idig_search_records" "idig_top_media"      "idig_top_records"    "idig_view_media"     "idig_view_records"

#returns all searchable fields
idig_meta_fields()

#country is mexico
idig_count_records(rq=list(country="Mexico"))

#returns all of the stateProv
query <- list("country"="Mexico")
df <- idig_search_records(rq=query, limit=100)
df$stateprovince
