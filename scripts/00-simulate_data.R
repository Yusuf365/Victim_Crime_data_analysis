#### Preamble ####
# Purpose: Simulated Data for victims of crime
# Author: Mohammed Yusuf Shaikh
# Date: 18th January 2024
# Contact: mohammedyusuf.shaikh@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
install.packages("tidyverse")
intsall.packages("janitor")

#### Using Library ####
library(tidyverse)
library(janitor)
library(tibble)

#### Simulate data ####

# Set the seed for reproducibility
set.seed(853)  

# Creating a simulated data for victims with different crime types
stimulated_data <- tibble(
  "VICTIM_ID" = 1:500,
  "REPORT_YEAR" = sample(2014:2022, 500, replace = TRUE),
  "SUBTYPE" = sample(x = c('Sexual Violation', 'Assault', 'Robbery', 'Other'), 500, replace = TRUE),
  "SEX" = sample(x = c('M', 'F', 'U'), 500, replace = TRUE),
  "AGE_GROUP" = sample(x = c('Adult', 'Youth', 'Child', 'Unknown'), 500, replace = TRUE),
  "AGE_COHORT" = sample(x = c('<12', '12 to 17', '18 to 24', '25 to 34', '35 to 44', '45 to 54', '55 to 64', '65+', 'Unknown'), 500, replace = TRUE),
  "COUNT" = sample(1:200, 500, replace = TRUE) 
)

# View first & last 6 rows of the stimulated data
head(stimulated_data)
tail(stimulated_data)
