##This was where I set my working directory
setwd("~/Desktop/Haley_stuff ")

##1. This is where I imported my data set into R
census <- read.csv("CPS.csv")

##2. Created subset for male and female 
#calculate the mean wage earned per hour for male and female
#Subset data sex for male 
mean(subset(census,sex == "M")$wage)
#the mean for male is $9.99/hour 

#Subset data sex for female
mean(subset(census,sex == "F")$wage)
##the mean for female is $7.87/hour 

##3.
## I Went with the ANOVA test 
gw %>% + anova_test(subset(census,sex == "M") ~ subset(census,sex == "F")$wage)

##4. 
## I went with the correlation test 
cor.test(census$wage, census$exper)
## Value of test statistic is 2.0157
## Value of P-value is .04433
## The P-value is less then alpha, so there is a correlation between wage and work experience 

##5. 
## I went with the ANOVA test 
gw %>% + anova_test(census$satisfaction ~ census$sector) # code did work IDK why 


