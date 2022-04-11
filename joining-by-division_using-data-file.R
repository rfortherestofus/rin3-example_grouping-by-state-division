library(tidyverse)


# load data ---------------------------------------------------------------

state_household_income <- read_csv("data/household-income.csv")


# get state regions and divisions -----------------------------------------

state_details <- read_csv("https://gist.github.com/charliejhadley/0ac61c33d1848aa633803deea2734088/raw/95f433b504ebe3cf67cc5c09b9ba284c2a44e6c2/state-details.csv")

region_details <- read_csv("https://gist.github.com/charliejhadley/0ac61c33d1848aa633803deea2734088/raw/95f433b504ebe3cf67cc5c09b9ba284c2a44e6c2/region-details.csv")

division_details <- read_csv("https://gist.github.com/charliejhadley/0ac61c33d1848aa633803deea2734088/raw/95f433b504ebe3cf67cc5c09b9ba284c2a44e6c2/division-details.csv")

# joining data ------------------------------------------------------------

