# Header ---------------------

# R script to gather data from SQL database for CHP article 
# Created by Lars Schoebitz
# MIT Licence
# 2019-01-24

# Comments -------------------

# load libraries -----------

library(tidyverse)

# read data ------

pellets_dry <- read_csv(here::here("data/raw/fuel_rate_calibration_pellets_dry.csv"))
pellets_wet <- read_csv(here::here("data/raw/fuel_rate_calibration_pellets_35mc.csv"))

# clean data -------

## clean dry pellets data

pellets_dry1 <- pellets_dry %>% 
  rename_all(.funs = snakecase::to_snake_case) %>% 
  as_tibble() %>% 
  filter(!is.na(fuel_auger_speed_hz))

pellets_dry2 <- pellets_dry1 %>% 
  rename(mass1 = mass_of_fuel_lb,
         mass2 = x_4,
         mass3 = x_5,
         fuel_auger_percent = fuel_auger) %>% 
  mutate(
    minute = seq(2, 24, 2),
    mc_perc = 0,
    mass1 = as.double(mass1)
  ) 

## clean wet pellets data

pellets_wet1 <- pellets_wet %>% 
  rename_all(.funs = snakecase::to_snake_case) %>% 
  as_tibble() %>% 
  filter(!is.na(fuel_auger_speed_hz)) 

pellets_wet2 <- pellets_wet1 %>% 
  rename(mass1 = mass_of_fuel_lb,
         mass2 = x_4,
         mass3 = x_5,
         fuel_auger_percent = fuel_auger) %>% 
  mutate(
    minute = seq(2, 24, 2),
    mc_perc = 35,
  ) 

## combine data

pellets_wet3 <- pellets_wet2 %>% 
  select(minute, mc_perc, fuel_auger_speed_hz, fuel_auger_percent, mass1, mass2, mass3) 

pellets_dry3 <- pellets_dry2 %>% 
  select(minute, mc_perc, fuel_auger_speed_hz, fuel_auger_percent, mass1, mass2, mass3)

pellets_combined <- pellets_dry3 %>% 
  bind_rows(pellets_wet3) %>% 
  mutate(mc_perc = factor(mc_perc))

# summarise data --------------------

pellets_fuel_rate <- pellets_combined %>% 
  gather(key = mass, value = lb, 5:7) %>% 
  group_by(minute, mc_perc, fuel_auger_speed_hz, fuel_auger_percent) %>%  
  summarise(mass_mean_kg_h = mean(lb, na.rm = TRUE) * 30 * 0.4535924)

# write data to RDS file -------------

write_rds(x = pellets_fuel_rate, path = here::here("data/raw/fuel_auger_calibration.rds"))


