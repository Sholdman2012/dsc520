#Sarah Holdman
#Assignment 2: Test Scores
#9/13/20


#Read the Test Scores file
setwd("C:/Users/shold/Documents/GITHUB/HOLDMAN_DSC520/dsc520")
test_scores <- read.csv("data/scores.csv", header = TRUE)

#Look at the structure and display summary
str(test_scores)
summary(test_scores)

#Assign variable based on sections and display summary

sports_group <- subset(test_scores, Section == "Sports")
regular_group <- subset(test_scores, Section == "Regular")
summary(sports_group)
summary(regular_group)

#Import library and plot data
library(ggplot2)

section_based_plot <- ggplot(data = test_scores, aes(x = Score,
fill = Section)) +
  geom_histogram(bins = 30, color = "white") +
  ggtitle("Grades by Section")
section_based_plot


