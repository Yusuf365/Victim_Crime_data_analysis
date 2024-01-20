#### Preamble ####
# Purpose: Simulated Data (IMIT)
# Author: Mohammed Yusuf Shaikh
# Date: `r format(Sys.Date(), "%d %B %Y")
# Contact: mohammedyusuf.shaikh@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("knitr")
install.packages("tidyverse")
intsall.packages("janitor")
library(tidyverse)
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)
library(tibble)

#### Simulate data ####
# Set the seed for reproducibility
set.seed(250)  

# Seeting number of rows
n_id <- 50

# Create a Simulated data
stimulus_data <- tibble(
  id = 1:n_id,
  First_Year_of_Grant_Period = sample(c(2018, 2019, 2020, 2021), n_id, replace = TRUE),
  total_sq_ft = round(runif(n_id, min = 50000, max = 1000000)),
  Is_the_site_considered_a_Brownfield = sample(c("Yes", "No"), n_id, replace = TRUE),
  IMIT_Eligible_Use = sample(c("Office", "Film Studio Complex", "Manufacturing", "BRTA Only - Employment", "Incubator", "Creative Industries", "Tourism Attraction", "Information Services and Data Processing", "Food and Beverage Wholesaling", "Scientific Research and Development", "Transformative"), n_id, replace = TRUE)
)

# View first and last rows
head(stimulus_data)
tail(stimulus_data)



# Creating Test

# Test 1 - Test checks if the length of unique values is exactly 11.
stimulus_data$IMIT_Eligible_Use |>
  unique() |>
  length() == 11

# Test 2 - Min. and Max. for Grant period(In Years) for stimulated data that is 2018 to 2021
stimulus_data$First_Year_of_Grant_Period |> min() == 2018
stimulus_data$First_Year_of_Grant_Period |> max() == 2021

# Test 3 - Check if total sq ft between 500000-1000000
stimulus_data$total_sq_ft |> min() >= 50000
stimulus_data$total_sq_ft |> max() <= 1000000

# Test 4 - Check if Total_sq_ft has a class i.e. "numeric" column
stimulus_data$total_sq_ft |> class() == "numeric"



