# set working directory to the folder containing this script
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# load required packages
library(tidyverse)
library(sf)
library(tidygeocoder)

# load locations
locations <- read_csv("locations.csv")

# geocode, if you don't already have latitude and longitude (note, set address to be the name of the column with the address in your data)
locations <- geocode(locations, address = address, method = "arcgis", full_results = TRUE)

# convert to sf object 
locations <- locations %>%
  st_as_sf(coords = c("long","lat"), # use names for columns with lat and long if you have already and don't need geocoding step
           crs = st_crs("EPSG:4326"))


locations <- locations %>%
  select(address)

# write to geojson
st_write(locations, "locations.geojson", delete_dsn = TRUE)
