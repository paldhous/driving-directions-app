# set working directory to the folder containing this script
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# load required packages
library(tidyverse)
library(sf)

# load locations
locations <- read_csv("locations.csv")

# convert to sf object
locations <- locations %>%
  st_as_sf(coords = c("longitude","latitude"),
           crs = st_crs("EPSG:4326"))

locations <- locations %>%
  select(address = desc)

# write to geojson
st_write(locations, "locations.geojson", delete_dsn = TRUE)
