##This was where I set my working directory
setwd("~/Desktop/Haley_stuff ")

##This is where I imported my data set into R
rona <- read.csv("Covid_data.csv")

## freq table of the variable we chose 
freq(rona$SOC2A)
freq(rona$SOC5C)
freq(rona$PHYS4)
