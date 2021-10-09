library(tidyverse)
library(jsonlite)
mpg_data <- read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F) #read in mpg data file

#DELIVERABLE 1: Linear Regression to Predict MPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data)) #generate summary statistics

sus_coil <- read.csv("Suspension_Coil.csv",check.names=F,stringsAsFactors = F) #read in suspension_coil data file

#DELIVERABLE 2: Summary Statistics on suspension coils
total_summary <- sus_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary dataFrame for PSI
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary dataframe for PSI, grouped by Manufacturing Lot

#DELIVERABLE 3: t-Tests on suspension coils
t.test((sus_coil$PSI),mu=1500) #compare population means
psi_lot1 <- subset(sus_coil,Manufacturing_Lot=="Lot1") #get subset of Manufacturing Lot 1
psi_lot2 <- subset(sus_coil,Manufacturing_Lot=="Lot2") #get subset of Manufacturing Lot 2
psi_lot3 <- subset(sus_coil,Manufacturing_Lot=="Lot3") #get subset of Manufacturing Lot 3
t.test((psi_lot1$PSI),mu=1500) #compare population versus Lot 1 population means
t.test((psi_lot2$PSI),mu=1500) #compare population versus Lot 2 population means
t.test((psi_lot3$PSI),mu=1500) #compare population versus Lot 3 population means