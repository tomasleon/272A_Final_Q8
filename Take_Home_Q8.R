#Code for Take Home Final Q8
#Calculate the average level of greenness within 1km of brownfield sites designated after 2004
#Produce 2 plots, worth 15 total points.
#I provide the skeleton of the code, but in parts b-e you will need to add a bit to produce the final plots

#a: Load tidyverse library
library(tidyverse)

#b: Bring in data
q8 <- read_csv("ADD CSV FILE NAME")

#c: Subset to brownfield sites designated after 2004 (i.e., 2005-)
q8_subset <- filter(q8, "ADD APPROPRIATE CODE HERE")

#d: Calculate average level of greenness within 1km of brownfield sites designated after 2004
summary(q8_subset$"ADD APPROPRIATE COLUMN HERE")

#e: Produce two plots illustrating average NDVI within 1km of brownfield sites designated after 2004
ggplot(q8_subset, aes(x = as.factor(year), y = "ADD APPROPRIATE COLUMN NAME HERE")) + 
  geom_violin() +
  xlab("ADD X LABEL") +
  ylab("ADD Y LABEL") +
  theme_minimal()

ggplot(q8_subset, aes("ADD APPROPRIATE COLUMN NAME HERE")) + geom_histogram(bins = "SELECT NUMBER OF BINS")
