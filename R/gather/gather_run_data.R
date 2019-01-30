# Header ---------------------

# R script to gather data from SQL database for CHP article 
# Created by Lars Schoebitz
# MIT Licence
# 2019-01-24

# Comments -------------------


# Load packages --------------

library(tidyverse)
library(DBI)
library(RMySQL)
library(lubridate)
library(hms)
library(stringr)
library(purrr)
library(dbplyr)

# SQL connection ----------------------------------------------------------

## connect to BMC database

con <- dbConnect(MySQL(),
                 user = "BMCReader",
                 password = rstudioapi::askForPassword("Database password"),
                 host = 'bmcauroradb-us-west-2b.czkgl1eohcnc.us-west-2.rds.amazonaws.com',
                 port = 3306,
                 dbname = 'clearstak')

# Gather data reading table -------------------

## define date and unit
start <- "2018-08-14 00:00:00"
end <- "2018-08-14 23:59:59"
idIBC <- 324

## build SQL query 
sql_query <- paste("SELECT * FROM DataReading WHERE idIBC = ", idIBC, " AND CapturedDateTime BETWEEN ", "'",start,"'", " AND ","'",  end,"'", sep = "")

## download data from SQL server
dat_reading_table <- dbGetQuery(conn = con, statement = sql_query)

## manipulate data 
dat_reading <- dat_reading_table %>% 
  as_tibble() %>% 
  select(-InsertedDateTime, -RunTime) %>% 
  mutate(
    CapturedDateTime = as_datetime(CapturedDateTime),
    date = as_date(CapturedDateTime)
  )

# Gather data point table -------------------

## get first value of data reading tables
first_value <- dat_reading %>% 
    slice(1) %>% 
    .$idDataReading

## get last value of data reading tables
last_value <- dat_reading %>% 
    arrange(desc(idDataReading)) %>% 
    slice(1) %>% 
    .$idDataReading


## build statement for DataPoint table

sql_query_dat_point <- paste("SELECT * FROM DataPoint WHERE idDataReading >=", first_value, "AND idDataReading <=", last_value) 
  
## get data
dat_point <- list()
dat_point_table <- dbGetQuery(conn = con, statement = sql_query_dat_point)
  
## save as tibble
dat_point <- dat_point_table %>% as_tibble()

# Gather sensor Table -------------------------------------
sensor <- dbGetQuery(conn = con, statement = "SELECT * FROM Sensor") %>% 
  select(idSensor, SensorFunction, Unit)


# Join dataframes ---------------------------------------------------------

data <- dat_reading %>% 
  left_join(dat_point) %>%
  left_join(sensor) %>% 
  mutate(
    Value = as.double(Value)
  ) %>%
  select(idDataReading, idIBC, idDataPoint, CapturedDateTime, Status, SensorFunction, Value, Unit, date) %>% 
  rename(
    id_data_reading = idDataReading,
    id_data_point = idDataPoint,
    date_time = CapturedDateTime,
    status = Status,
    sensor = SensorFunction,
    value = Value,
    unit = Unit
  ) %>% 
  filter(!is.na(value))

# write data to RDS file -------------

write_rds(x = data, path = here::here("data/raw/database_GI7_2018-08-14.rds"))

# Disconnect from DB -----------------------

dbDisconnect(conn = con)

