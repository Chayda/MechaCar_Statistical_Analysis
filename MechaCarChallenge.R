library(tidyverse)
mpg_data <- read.csv("MechaCar_mpg.csv") #read in data file
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data)) #generate summary statistics
sus_coil <- read.csv("Suspension_Coil.csv")
total_summary <- sus_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary dataframe for PSI
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary dataframe for PSI, grouped by Manufacturing Lot

sample_table <- sus_coil %>% sample_n(100) #randomly sample 100 datapoints
t.test(log10(sample_table$PSI),mu=mean(log10(sus_coil$PSI))) #compare sample versus population means
psi_lot1 <- subset(sus_coil,Manufacturing_Lot=="Lot1") #get subset of Manufacturing Lot 1
psi_lot2 <- subset(sus_coil,Manufacturing_Lot=="Lot2") #get subset of Manufacturing Lot 2
psi_lot3 <- subset(sus_coil,Manufacturing_Lot=="Lot3") #get subset of Manufacturing Lot 3
t.test(log10(sample_table$PSI),mu=mean(log10(psi_lot1$PSI))) #compare sample versus Lot 1 population means
t.test(log10(sample_table$PSI),mu=mean(log10(psi_lot2$PSI))) #compare sample versus Lot 2 population means
t.test(log10(sample_table$PSI),mu=mean(log10(psi_lot3$PSI))) #compare sample versus Lot 3 population means