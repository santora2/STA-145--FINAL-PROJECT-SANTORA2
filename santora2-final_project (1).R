# STA 145 Final Project
# Do songs with featured artists get more Spotify streams than songs without?
# This script uses only the readr package; everything else is base R.

# ---- Load packages ----
library(readr)

# ---- Load data ----
# Make sure data.csv is in your working directory
data <- read_csv("data.csv")

# ---- Check the data ----
dim(data)
names(data)
summary(data)

# Treat featured as a two-group categorical variable
data$featured <- factor(data$featured)

# ---- Descriptive statistics for Table 1 ----

# For quantitative variables: spotify_streams
summary(data$spotify_streams)
mean(data$spotify_streams, na.rm = TRUE)
sd(data$spotify_streams, na.rm = TRUE)
min(data$spotify_streams, na.rm = TRUE)
max(data$spotify_streams, na.rm = TRUE)

# For qualitative variables: featured
table(data$featured)                                  # counts
prop.table(table(data$featured))                      # proportions
round(prop.table(table(data$featured)) * 100, 1)      # percentages

# ---- Bivariate analysis: streams by featured ----

# Number of songs, mean, and standard deviation of streams in each group
tapply(data$spotify_streams, data$featured, length)
tapply(data$spotify_streams, data$featured, mean, na.rm = TRUE)
tapply(data$spotify_streams, data$featured, sd, na.rm = TRUE)

# Two-sample t-test
t.test(spotify_streams ~ featured, data = data)

# Boxplot of streams by featured
boxplot(spotify_streams ~ featured, data = data,
        xlab = "Featured Artist",
        ylab = "Spotify Monthly Streams",
        main = "Spotify Streams by Featured Artist")