# Header ---------------------

# R script to gather water properties data for CHP paper
# Created by Lars Schoebitz
# MIT Licence
# 2019-01-30

# Comments -------------------

# Numbers taken from:
# https://www.engineeringtoolbox.com/specific-heat-capacity-water-d_660.html
# https://www.engineeringtoolbox.com/water-density-specific-weight-d_595.html

# load libraries -----------

library(tidyverse)

# load data -------------

water_properties <- read_csv(here::here("data/raw/water_fluid_properties.csv"), skip = 1)

# tidy data ----------

water_properties_tidy <- water_properties %>% 
  rename_all(.funs = snakecase::to_snake_case)

# store data -----------------

write_csv(x = water_properties_tidy, path = here::here("data/intermediate/water_properties_tidy.csv"))

