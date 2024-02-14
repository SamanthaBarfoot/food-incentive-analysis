#### Preamble ####
# Purpose: Downloads, saves, and converts the data from .dta to .csv file format from the American Economic Association 
# Author: Samantha Barfoot, Mehrnoush Mohammadi, Brooklin Becker
# Date: 7 February 2024 
# Contact: samantha.barfoot@mail.utoronto.ca
# License: MIT
# Pre-requisites: download data from American Economic Association

library(haven)
library(tidyverse)

#data is behind sign-in
# data can be acessed at https://www.aeaweb.org/journals/dataset?id=10.1257/pol.20170588

#### Read in the data ####
raw_food <-
  read_dta('data/raw_data/APRS_data.dta')

#### Save data and convert to csv ####
write_csv(
  x = raw_food,
  file = "data/analysis_data/food_data.csv"
)
