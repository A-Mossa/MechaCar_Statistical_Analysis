##Deliverable 1
#1. Use the library() function to load dplyr
library(dplyr)

#2. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#3. Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_data)

#4. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_data))


##Deliverable 2
#1. Import and read in the Suspension_Coil.csv file as a table.
SusCoil_data <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#2. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- SusCoil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#3. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- SusCoil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


##Deliverable 3
#1. write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean
t.test(SusCoil_data$PSI, mu=mean(SusCoil_data$PSI))

#2. write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean
t.test(subset(SusCoil_data$PSI, SusCoil_data$Manufacturing_Lot == "Lot1"), mu=mean(SusCoil_data$PSI)) #Lot 1
t.test(subset(SusCoil_data$PSI, SusCoil_data$Manufacturing_Lot == "Lot2"), mu=mean(SusCoil_data$PSI)) #Lot 2
t.test(subset(SusCoil_data$PSI, SusCoil_data$Manufacturing_Lot == "Lot3"), mu=mean(SusCoil_data$PSI)) #Lot 3

