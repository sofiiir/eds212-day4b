#load libraries
library(GGally)
library(skimr)
library(palmerpenguins)
library(tidyr)
library(ggplot2)

#take a look at the penguins data
View(penguins)

#view the column names
names(penguins)

#check dimensions of data frame
dim(penguins)

#get a summary
summary(penguins)

#get a summary using {skimr}
skimr::skim(penguins)

#print the first 6 rows
head(penguins)

#print last 6 rows
tail(penguins)

#make a pairplot
GGally::ggpairs(penguins)

#make a pairplot with a select number of columns by species
GGally::ggpairs(penguins,
                columns = 3:6,
                ggplot2::aes(colour = species))
#make a histogram of penguin flipper lengths
ggplot(data = penguins, aes(x = flipper_length_mm, fill = species)) +
  geom_histogram()
