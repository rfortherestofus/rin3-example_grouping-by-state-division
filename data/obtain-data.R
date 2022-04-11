library(tidycensus)
library(janitor)
library(tidyverse)

state_total_population <- get_acs(geography = "state", variables = "B01001_001")

state_total_population %>% 
  clean_names() %>% 
  select(name, estimate) %>% 
  rename(state_population = estimate) %>% 
  write_csv("data/household-income.csv")
