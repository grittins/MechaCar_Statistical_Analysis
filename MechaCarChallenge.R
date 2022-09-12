# load dplyr package
library(dbplyr)

# import and read the MechaCar_mpg.csv file as a DataFrame
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# perform linear regression 
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_mpg)

# p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_mpg)) -> pl? ot()

# import and read the Suspension_Coil.csv file as a table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv')

# mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# t.test() for PSI across all manufacturing lots (mean = 1500)
t.test(Suspension_Coil$PSI, mu = 1500)

# t.test() for PSI each manufacturing Lot1 (mean = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# t.test() for PSI each manufacturing Lot2 (mean = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# t.test() for PSI each manufacturing Lot3 (mean = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
