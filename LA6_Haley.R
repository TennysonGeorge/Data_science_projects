##This was where I set my working directory
setwd("~/Desktop/Haley_stuff ")

##1. This is where I imported my data set into R
Bills <- read.csv("Utilities.csv")

##1b.  Created season variable base on month and sperate it the season varable I want to look at
Bills$season[Bills$month >= 12 & Bills$month >= 2 ] <- "winter"
Bills$season[Bills$month >= 3 & Bills$month <= 5 ] <- "spring"
Bills$season[Bills$month >= 6 & Bills$month <= 8 ] <- "summer"
Bills$season[Bills$month >= 9 & Bills$month <= 11 ] <- "fall"
## frequency table for season
freq(Bills$season)
freq(Bills$totalbill)


##Make a histogram of customers total monthly bill
ggplot(data = Bills, aes(x = totalbill)) + geom_histogram()




## 2a. Does total monthly bill varies with season
chi_bills <- table(Bills$totalbill, Bills$season) ## I tried this and it did work
chisq.test(chi_bills) ## I tried this and it did work
chi_bills <- chisq.test(table(Bills$season, Bills$totalbill)) ## I tried this and it did work
gw %>% + anova_test(Bills$season ~ Bills$totalbill) ## I tried this and it did work

t.test(Bills$season ~ Bills$totalbill) ## I tried this and it did work

## Using the Bi-variate statistical tools, use the chi-square and ANOVA are the two that are possiable to use 
## but these two method is not giving me any result 
## I know what I'm doing wrong
