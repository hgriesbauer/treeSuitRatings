# Script to extract information from bcdata

library(bcdata)
library(bcmapsdata)
library(sf)
library(mapview)

# First, we need to get Omineca, Skeena and Northeast regions to use as filter for bcdata
northArea<-
  bcdata::bcdc_query_geodata("natural-resource-nr-regions") %>% #query region
  filter(ORG_UNIT%in%c("ROM","RSK","RNO")) %>% # for three regions of interest
  collect() %>% # collect
  sf::st_union() # combine polygons into single




