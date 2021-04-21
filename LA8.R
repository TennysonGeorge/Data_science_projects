##This was where I set my working directory
setwd("~/Desktop/Haley_stuff ")

##This is where I imported my data set into R
Media <- read.csv("Ithaca.csv")

##2. Conducting data management 

## 2A. Data management for tvnaat, tvhardat, and tvsoftat

##Checking freq before 
freq(Media$tvnaat)
freq(Media$tvhardat)
freq(Media$tvsoftat)

##Making all data value 99 into NA
Media$tvnaat[Media$tvnaat == 99] <- NA
Media$tvhardat[Media$tvhardat == 99] <- NA
Media$tvsoftat[Media$tvsoftat == 99] <- NA

#Checking freq after turning 99 into NA
freq(Media$tvnaat)
freq(Media$tvhardat)
freq(Media$tvsoftat)

## 2B. Recording sex and marit into character variables

##Recording sex as into character variables
freq(Media$sex)
Media$sex[Media$sex == 9] <- NA
Media$sex[Media$sex == 1] <- "male"
Media$sex[Media$sex == 0] <- "female"
freq(Media$sex)

##Recording marit into character variables 
freq(Media$marit)
Media$marit[Media$marit == 9] <- NA
Media$marit[Media$marit == 1] <- "single"
Media$marit[Media$marit == 2] <- "married"
Media$marit[Media$marit == 3] <- "divorced/separated"
Media$marit[Media$marit == 4] <- "widowed"
Media$marit[Media$marit == 5] <- "other"
freq(Media$marit)

## 3. The mean attention to national TV news for male and female (WIP)
mean(subset(Media,sex == "male")$tvnaat, na.rm = TRUE)

mean(subset(Media,sex == "female")$tvnaat, na.rm = TRUE)

## 4. 
## I Went with the ANOVA test 
gw %>% + anova_test(subset(Media,sex == "male") ~ subset(Media,sex == "female")$tvnaat, na.rm = TRUE) ## this code didn't work


## 5. 
## I went with the correlation test 
cor.test(Media$tvnaat, Media$tvhardat) ## this code work
## Value of test statistic is 17.249
## Value of P-value is 2.2e-16
## The P-value is less then alpha, so there is a correlation between 


## 6. 
gw %>% + anova_test(Media$tvsoftat ~ Media$marit) ## this code didn't work 
