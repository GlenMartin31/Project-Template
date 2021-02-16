# #######################################################################################################################

# Author of code: Glen P. Martin.

# INSERT SHORT DESCRIPTION OF WHAT THIS SCRIPT DOES

# #######################################################################################################################

#first script usually loads the data e.g. read.csv(here::here("Data", "Raw")) and applies data cleaning steps
#Save any manipulated data in the folder here::here("Data", "Processed")

library(tidyverse)

example_data_loading <- read_csv(here::here("Data", "Raw", "Example data.csv"))

#might add a new variable in this first script, or do some data cleaning
example_data_loading <- example_data_loading %>%
  mutate(Sex_coded = ifelse(Sex == "M", 0, 1))

# could then save (will often use rds object for such saving after R processing):
write_rds(example_data_loading, path = here::here("Data", "Processed", "Clean_Example_Data.rds"))
