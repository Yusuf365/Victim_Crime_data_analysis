#### Preamble ####
# Purpose: Tests
# Author: Mohammed Yusuf Shaikh
# Date: 22 January 2024
# Contact: mohammedyusuf.shaikh@mail.utoronto.ca
# License: MIT
# Pre-requisites: Cleaned data set for testing


#### Workspace setup for Test ####
library(tidyverse)
library(janitor)
library(dplyr)

#### Access clean data for Testing
cleaned_victim_data <- read_csv("inputs/data/cleaned_data.csv", show_col_types = FALSE)


#### Test data ####

# Test 1 has only 4 unique crime types
cleaned_victim_data$subtype |>
  unique() |>
  length() == 4
# Test 2 check minimum year in data
cleaned_victim_data$report_year |> min() == 2014

# Test 3 check maximum year in data
cleaned_victim_data$report_year |> max() == 2022

# Test 4 Tests that there are exactly 1110 id in the data
num_rows <- nrow(cleaned_victim_data)
num_rows == 1110

# Test 5 Testing class for victim_count data
cleaned_victim_data$victim_count |> class() == "numeric"


