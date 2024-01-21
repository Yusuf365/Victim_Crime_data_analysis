#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Mohammed Yusfu Shaikh
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: mohammedyusuf.shaikh@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("tidyverse")
install.packages("janitor")
library(opendatatoronto)
library(tidyverse)
library(janitor)


#### Download data ####

# get package
package <- show_package("030dff58-8212-4b80-b79e-0701b59af918")
package

# get all resources for this package
resources <- list_package_resources("030dff58-8212-4b80-b79e-0701b59af918")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
the_raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data




#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
