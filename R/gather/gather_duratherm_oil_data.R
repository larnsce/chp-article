# Header ---------------------

# R script to gather Duratherm Oil properties data for CHP paper
# Created by Lars Schoebitz
# MIT Licence
# 2019-01-30

# Comments -------------------

# load libraries -----------

library(tidyverse)

# read data ------

## numbers taken from Duratherm Oil product sheet: https://durathermfluids.com/pdf/productdata/heattransfer/duratherm-fg.pdf (opened: 2019-01-30)

duratherm <- read_csv(file = here::here("data/raw/thermal_properties_of_duratherm_oil.csv"), skip = 1, n_max = 8) 

# tidy data --------

duratherm_tidy <- duratherm %>% 
  rename_all(.funs = snakecase::to_snake_case) %>% 
  select(temperature_c, density_kg_m_3_1, heat_capacity_k_j_kg_k_1) 

# store data -----------------

write_csv(x = duratherm_tidy, path = here::here("data/intermediate/duratherm_oil_properties_tidy.csv"))
  