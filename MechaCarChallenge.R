# Deliverable 1
## Load dplyr package using the library function
library(dplyr)
## Import and read in the csv as a dataframe
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
## Perform a multiple linear regression using lm; pass all 6 variables/columns into it
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)
## Use the summary function to determine the p-value and the r-squared value for the model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics899


