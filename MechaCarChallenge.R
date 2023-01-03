# Load the necessary library
library(dplyr)

#Part 1: Linear Regression to Predict MPG
# Read in csv file
df <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Perform Linear Regression
lin_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)
lin_reg

# Determine p-value & r-squared value for linear regression model
summary(lin_reg)

# Part 2: Vizualizations for the Trip Analysis
# Read in csv
susdf <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create total_summary df
total_summary <- susdf %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),
                                     SD=sd(PSI), .groups='keep')
total_summary

# Create a lot_summary to group by manufacturing lot
lot_summary <- susdf %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),
                                                                  SD=sd(PSI), .groups='keep')
lot_summary

# Part 3: T-Tests on Suspension Coils
# T-Test for all manufacturing lots
t.test(susdf$PSI, mu=1500)

# T-Test for each of the manufacturing lots to determine statistical difference from population
#Lot1
t.test(x=subset(susdf, Manufacturing_Lot =='Lot1')$PSI, mu=1500)
#Lot2
t.test(x=subset(susdf, Manufacturing_Lot =='Lot2')$PSI, mu=1500)
#Lot3
t.test(x=subset(susdf, Manufacturing_Lot =='Lot3')$PSI, mu=1500)
