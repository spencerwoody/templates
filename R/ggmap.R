
library(here)
library(dplyr)
library(ggplot2)
library(ggmap)

## Read in data 
calif <- read.csv(here("R/calif_penn_2011.csv")) %>%
  na.omit() %>%
  filter(STATEFP == 6) %>%
  rename(lon = LONGITUDE, lat = LATITUDE)

## Bounds of map
CA <- c(left = min(calif$lon),
        right = max(calif$lon),
        bottom = min(calif$lat),
        top = max(calif$lat))

## Get map info
map <- get_stamenmap(CA, zoom = 6, maptype = "toner-lite")

## Plot the data
ggmap(map) +
  geom_point(data = calif, aes(lon, lat, col = Median_house_value), alpha = 0.5) +
  scale_color_distiller("Median\nhouse\nvalue ($)",palette = "Spectral")

