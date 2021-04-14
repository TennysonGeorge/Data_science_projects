#This was where I set my working dir, this code work 
setwd("~/Desktop/Haley_stuff ")

#This is where I load my data into R, this code work 
Help <- read.csv("HELP.csv")

#to install those packages, and when it ask you "install from sources" = NO 
install.packages("tidyverse") #no go 
install.packages("dplyr") # this get install, you can run it lib 
install.packages("ggplot2") #no go 
install.packages("descr") #this get install, you can run it lib 

#these are the only two code that gave me the freq table(not plots) when I run the lib and code 
library(descr)  # these are the only library that work 
library(Hmisc) # these are the only library that work 
freq(Help$sex) #these gave me the freq table for sex 
freq(Help$d1) #these gave me the freq table for sex hop
labl(Help$sex) <- "Sex of the data" #this how you can lable the freq then run freq(Help$sex)
freq(as.ordered(Help$sex)) #this is to get the cum-percent of the freq 
freq(as.ordered(Help$d1)) #this is to get the cum-percent of the freq
library(tidyverse) 


#to see the freq distub in plots 
freq(Help$age)
freq(Help$drugrisk)
freq(Help$substance)
freq(Help$homeless)
freq(Help$sex)
freq(Help$id)

#Subset data to incl substance == cocaine and over 40 years old 
"40blow" <- subset(Help, substance == "cocaine" & age >= 40)

freq(`40blow`$sex)
