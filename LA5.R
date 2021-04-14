## library(ggplot2)
## library(tidyverse)
##This was where I set my working directory
setwd("~/Desktop/Haley_stuff ")

##1. This is where I imported my data set into R
Bills <- read.csv("Utilities.csv")

##2. Make a histogram of customers total monthly bill
ggplot(data = Bills, aes(x = totalbill)) + geom_histogram()

##3. Make scatter plot displaying gas bill by month
ggplot(data = Bills, aes(x = month, y = gasbill)) +
  geom_point() + 
  labs(x = 'Months', 
       y = 'Gasbill($)',
       title = 'The Relationship b/t gas bill and month')
## December has the highest gas bill overall  
# Average gas bill for January and December
jan <- subset(Bills, month == 1)
Dec <- subset(Bills, month == 12)
mean(Bills$jan) ## this code didn't work and IDK why but if I can have sometime for revision more can you help me with this  
mean(Bills$Dec)  ## this code didn't work and IDK why but if I can have sometime for revision more can you help me with this
mean(Bills$month[Bills$gasbill == "jan"]) ##this code didn't work and IDK why but if I can have sometime for revision more can you help me with this
mean(Bills$month[Bills$gasbill == "Dec"]) ##this code didn't work and IDK why but if I can have sometime for revision more can you help me with this
mean(Bills$month[Bills$gasbill == 1]) ##this code didn't work and IDK why but if I can have sometime for revision more can you help me with this
mean(Bills$month[Bills$gasbill == 12]) ## this code didn't work and IDK why but if I can have sometime for revision more can you help me with this
mean(Bills$gasbill)


##4.Make scatter plot displaying electric bill by month
ggplot(data = Bills, aes(x = month, y = elecbill)) +
  geom_point() + 
  labs(x = 'Months', 
       y = 'electric bill($)',
       title = 'The Relationship b/t electric bill and month')
## December has the has the highest electric bill
## was having a hard time trying to get this in question 3, can you tell me what I did wrong here 

##5. Make a scatter plot displaying the relationship between gas usage and gas bill 
ggplot(data = Bills, aes(x = ccf, y = gasbill)) +
  geom_point() + 
  labs(x = 'gas usage(ccf)', 
       y = 'gas bill($)',
       title = 'The Relationship b/t gas bill and gas usage')
##There's a positive correlation between gas usage and gas bill 


##6. Make a scatter plot displaying relationship between electricity usage and bill 
ggplot(data = Bills, aes(x = kwh, y = elecbill)) +
  geom_point() + 
  labs(x = 'electric usage (kwh)', 
       y = 'electric bill ($)',
       title = 'The Relationship b/t electric usage and electric bill')

##There's a positive correlation between electric usage and bill 




