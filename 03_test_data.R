#### Preamble ####
# Purpose : test data
# Author : Zien Gao
# Date 19 September 2024
# Contact : lauragao75@gmail.com
# License: MIT
# Pre-requisites: None
# Any other information needed? None



#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))