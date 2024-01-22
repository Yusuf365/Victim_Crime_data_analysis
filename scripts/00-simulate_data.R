#### Preamble ####
# Purpose: Simulated Data (IMIT)
# Author: Mohammed Yusuf Shaikh
# Date: format(Sys.Date(), "%d %B %Y")
# Contact: mohammedyusuf.shaikh@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
install.packages("tidyverse")
intsall.packages("janitor")

#### Using Library ####
library(tidyverse)
library(janitor)
library(tibble)

#### Simulate data ####
# Set the seed for reproducibility
# Set the seed for reproducibility
set.seed(250)  

# Setting number of rows
n_id <- 100

# Creating a simulated data 
stimulated_data <- tibble(
  "Victim_id" = 1:n_id,
  "REPORT_YEAR" = sample(2014:2022, n_id, replace = TRUE),
  "CATEGORY" = 'Crimes Against the Person',
  "SUBTYPE" = sample(c('Sexual Violation', 'Assault', 'Robbery', 'Other'), n_id, replace = TRUE),
  "ASSAULT_SUBTYPE" = sample(c('Aggravated', 'Non-Aggravated', 'N/A', 'Assault on Peace Officer'), n_id, replace = TRUE),
  "SEX" = sample(c('M', 'F', 'U'), n_id, replace = TRUE),
  "AGE_GROUP" = sample(c('Adult', 'Youth', 'Child', 'Unknown'), n_id, replace = TRUE),
  "AGE_COHORT" = sample(c('<12', '12 to 17', '18 to 24', '25 to 34', '35 to 44', '45 to 54', '55 to 64', '65+', 'Unknown'), n_id, replace = TRUE),
  "COUNT" = sample(1:200, n_id, replace = TRUE) 
)

# View first & last 6 rows of the stimulated data
head(stimulated_data)
tail(stimulated_data)
