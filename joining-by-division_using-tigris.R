library(tidyverse)
library(sf)
library(tigris)


# load data ---------------------------------------------------------------

state_population <- read_csv("data/household-income.csv")


# get state regions and divisions -----------------------------------------

state_details <- states() %>%
  clean_names() %>% 
  st_drop_geometry() %>% 
  as_tibble() %>% 
  select(region, division, name) %>% 
  rename(region_id = region,
         division_id = division,
         state_name = name)

division_details <- divisions() %>% 
  clean_names() %>% 
  st_drop_geometry() %>% 
  as_tibble() %>% 
  select(divisionce, name) %>% 
  rename(division_id = divisionce,
         division_name = name)

region_details <- regions() %>% 
  clean_names() %>% 
  st_drop_geometry() %>% 
  as_tibble() %>% 
  select(regionce, name) %>% 
  rename(region_id = regionce,
         region_name = name)


# joining data ------------------------------------------------------------

state_household_income %>% 
  left_join(state_details,
            by = c("name" = "state_name"))







  
