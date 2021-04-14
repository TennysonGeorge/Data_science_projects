#loading packages
library(descr)


##This was where I set my working directory
setwd("~/Desktop/Haley_stuff ")

##1. This is where I load my dataset into R
Help <- read.csv("HELP.csv")


##2. Checking freq of mcs 
freq(Help$mcs)

## The new variable HelpExtremem take on the value of whether patients are at extrem risk 

## Created variable ExtremeMCS: 1 = "at extreme risk (mcs < 20)"'\;
## 0 = "not at Extreme risk (mcs >=20)"
Help$ExtremeMCS[Help$mcs < 20] <- 1
Help$ExtremeMCS[Help$mcs >= 20] <- 0

## Making a freq table for ExtremeMCS
freq(Help$ExtremeMCS)


##3. Making a new variable SuicidalThought base of g1b
## check the freq of g1b
freq(Help$g1b)
Help$SuicidalThought[Help$g1b =="yes"] <- 1
Help$SuicidalThought[Help$g1b =="no"] <- 0

##Making a freq table for SuicidalThought
freq(Help$SuicidalThought)


##4. Making a new variable HomelessStatus base of homeless 
##Checking freq of homeless 
freq(Help$homeless)
Help$HomelessStatus[Help$homeless =="yes"] <- 1
Help$HomelessStatus[Help$homeless =="no"] <- 0

##Making a freq table for homelessStatus
freq(Help$HomelessStatus)


##5. Make a new variable call risktotal which is the sum of HomelessStatus, SuicidalThought, and ExtremeMCS
Help$RiskTotal <- Help$HomelessStatus + Help$SuicidalThought + Help$ExtremeMCS
freq(Help$RiskTotal)




