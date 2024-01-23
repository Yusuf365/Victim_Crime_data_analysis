#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
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

# Testing class for victim_count data
cleaned_victim_data$count |> class() == "numeric"


