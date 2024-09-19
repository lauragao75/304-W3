#### Preamble ####
# Purpose : clean data
# Author : Zien Gao
# Date 19 September 2024
# Contact : lauragao75@gmail.com
# License: MIT
# Pre-requisites: None
# Any other information needed? None



#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "analysis_data.csv")