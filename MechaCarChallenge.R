# Deliverable 1
## Load dplyr package using the library function
library(dplyr)
## Import and read in the csv as a dataframe
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
## Perform a multiple linear regression using lm; pass all 6 variables/columns into it
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)
## Use the summary function to determine the p-value and the r-squared value for the model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics899

# Deliverable 2
## Import the csv file
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
## Create a total summary dataframe and use summarize() to get the mean, median, variance, and std variation of suspension coil's psi column
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI), Std_PSI=sd(PSI), .groups = 'keep')
#Create summary table grouped by Manufacturing Lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI), Std_PSI=sd(PSI), .groups = 'keep')  

