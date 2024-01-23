#### Preamble ####
# Purpose: Cleans the raw data obtained from Open Data Toronto for victim of crimes.
# Author: Mohammed Yusuf Shaikh
# Date: 22 January 2024
# Contact: mohammedyusuf.shaikh@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data.R first from script.

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)

#### Clean data ####
the_raw_data_crime_victims <- read_csv("inputs/data/raw_data.csv", show_col_types = FALSE)

# Search by giving column names
names(the_raw_data_crime_victims)

# Removing 2 columns as the data focuses on the crime type
cleaned_victim_data <- the_raw_data_crime_victims %>%
  select(-CATEGORY, -ASSAULT_SUBTYPE)

# Make the names easier to type
cleaned_victim_data <-
  clean_names(cleaned_victim_data)

# Rename count column
cleaned_victim_data <-
  cleaned_victim_data |>
  rename(
    victim_count = count
  )

# A look at the first six rows
head(cleaned_victim_data)


# Save data in inputs/data
write_csv(cleaned_victim_data, file="outputs/data/cleaned_data.csv")



