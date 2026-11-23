#santora2-final_project.R 
# STA 145 Final Project: Upload your data into R 

# Step 6: load the tidyverse 
library(tidyverse)
library(readr)

# Step 7: load data.csv from working directory 
data <- read_delim("data.csv")

# Step 8: run the three checks 
dim(data)
names(data)
summary(data)

# descriptive statistics for table 1
# a quanitive variable 
summary(data$spotify_streams)
mean(data$spotify_streams)
sd(data$spotify_streams)
min(data$spotify_streams)``
max(data$spotify_streams)

#for qualitive variables  
13/107