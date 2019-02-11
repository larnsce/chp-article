## Raw data tables

The following data tables are data stored in directory "chp-article/data/raw" and used as input to the chp_research_article.Rmd file. 

### Operational raw data of FSTU

**Description:**

This is the original raw data for the operated Biogenic Refinery and the date of 2018-08-14. 

**Name of file:** database_GI7_2018-08-14.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| date_time  | specific date and time when data point was collected in timezone CET | date-time | 
| status | operational status of the biogenic Refinery | character | 
| sensor  | sensor used in biogenic refinery | character  |
| value  | value of recorded data point | double |
| unit  | unit of recorded data point | character |

### Fuel rate data

**Description:**

Fuel rate data collected during operation of the Biogenic Refinery on 2018-08-14.

**Name of file:** fuel_rate_data.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| fuel_lb | measured amount of fuel in pounds that entered the biogenic refinery | double | 
| time_min | amount of time in minutes that passed between two measurements | double | 
| mass_flow_lb_hr | mass flow in pounds per hour | double  |
| mass_flow_kg_hr | mass flow in kilogram per hour | double |

### Jacket heat loss data

**Description:**

Data collected to estimate the loss of heat from the jacket of the Biogenic Refinery.

**Name of file:** jacket_heat_loss_temperature_measurements.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| section | section number of the biogenic refinery | double | 
| component | component of the biogenic refinery | characters | 
| surface | running number for surface of the biogenic refinery | double |
| temperature_c | measured temperature on in °C | double | 
| width | width of the surface in meter | double | 
| length | length of the surface in meter | double | 


## Intermediate data tables

The following data tables are data stored in directory "chp-article/data/intermediate" and used as input to the chp_research_article.Rmd file. 

### Duratherm oil properties

**Description:**

Numbers taken from Duratherm Oil product sheet: https://durathermfluids.com/pdf/productdata/heattransfer/duratherm-fg.pdf

**Name of file:** duratherm_oil_properties_tidy.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| temperature_c | reference temperature in °C  | double | 
| density_kg_m_3_1 | density in kg/m^3 | double | 
| heat_capacity_k_j_kg_k_1 | specific heat capacity in kJ/kg * K | double|

### Water fluid properties

**Description:**

Numbers taken from:

https://www.engineeringtoolbox.com/specific-heat-capacity-water-d_660.html   
https://www.engineeringtoolbox.com/water-density-specific-weight-d_595.html

**Name of file:** water_propertie_tidy.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| temperature_c | reference temperature in °C  | double | 
| density_kg_m_3 | density in kg/m^3 | double | 
| heat_capacity_k_j_kg_k | specific heat capacity in kJ/kg * K | double|

### Pipe assembly data

**Description:**

Specific technical data sheet for pipes used in the hydronic and oil heat exchanger.

**Name of file:** pipe_assembly_data_small.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| component | pipe component  | character | 
| r_pipe_k_k_w | R-value of pipe in K/kW | double | 
| r_insulation_k_k_w | R-value of pipe insulation material in K/kW | double |

### Sensor component names

**Description:**

Sensor component names reference table.

**Name of file:** sensor_component_names_GI7_tidy.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| sensor | sensor name in database  | character | 
| name | descriptive sensor name | character  | 
| unit | measurement unit of sensor | character  |
| component | component name for reference table | character |


## Final data tables

The following data tables are data stored in directory "chp-article/data/final" and are data underlying figures in the  chp_research_article.Rmd file. 

### Final Power Balance

**Description:**

**Name of file:** pipe_assembly_data_small.csv

**Variables:**

| Variable name | Variable definition | Data type | 
|:------|:----------|:---------|
| parameter | energy parameter component  | character | 
| value | calculated thermal energy flow in kW | double | 






