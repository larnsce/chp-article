# Header ---------------------

# R script to gather GI7 sensor data from Google Drive for CHP paper
# Created by Lars Schoebitz
# MIT Licence
# 2019-01-25

# Comments -------------------

# load libraries -----------

library(tidyverse)
library(googledrive)

# read data ------

# id <- drive_get(id = "1P6d0iiKhl3uE3x7xG3Ek8THPH6VONuW549FRJ0eq0Ks")
# drive_get(id = "1P6d0iiKhl3uE3x7xG3Ek8THPH6VONuW549FRJ0eq0Ks")

# drive_download(file = id, path = here::here("data/raw/GI7_sensor_components.xlsx"), overwrite = TRUE)

sensor <- read_csv(here::here("data/raw/sensor_component_names_GI7.csv"))

sensor_tidy <- sensor %>% 
  select(sensor, component, unit) %>% 
  rename(name = component) %>% 
  mutate(component = snakecase::to_snake_case(name))
  


