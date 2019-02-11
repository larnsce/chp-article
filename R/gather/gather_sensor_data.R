# Header ---------------------

# R script to gather GI7 sensor data from Google Drive for CHP paper
# Created by Lars Schoebitz
# MIT Licence
# 2019-01-25

# Comments -------------------

# load libraries -----------

library(tidyverse)

# read data ------

sensor <- read_csv(here::here("data/raw/sensor_component_names_GI7.csv"))

sensor_tidy <- sensor %>% 
  select(sensor, component, unit) %>% 
  rename(name = component) %>% 
  mutate(component = snakecase::to_snake_case(name))
  
# write data ------

write_csv(sensor_tidy, here::here("data/intermediate/sensor_component_names_GI7_tidy.csv"))
